#define PROCESS_ACCURACY 10

/****************************************************
				INTERNAL ORGANS DEFINES
****************************************************/
/obj/item/organ/internal
	var/dead_icon // Icon to use when the organ has died.

/obj/item/organ/internal/die()
	..()
	if((status & ORGAN_DEAD) && dead_icon)
		icon_state = dead_icon

/obj/item/organ/internal/install(mob/living/carbon/human/H)
	if(..()) return 1
	H.internal_organs |= src
	var/obj/item/organ/internal/outdated = H.internal_organs_by_name[organ_tag]
	if(outdated)
		outdated.removed()
	H.internal_organs_by_name[organ_tag] = src
	if(parent)
		parent.internal_organs |= src

/obj/item/organ/internal/Destroy()
	if(owner)
		owner.internal_organs.Remove(src)
		owner.internal_organs_by_name[organ_tag] = null
		owner.internal_organs_by_name -= organ_tag
		while(null in owner.internal_organs)
			owner.internal_organs -= null
		var/obj/item/organ/external/E = owner.organs_by_name[parent_organ]
		if(istype(E)) E.internal_organs -= src
	return ..()

/obj/item/organ/internal/removed(var/mob/living/user)
	..()

	owner.internal_organs_by_name[organ_tag] = null
	owner.internal_organs -= src

	// Remove parent references
	parent.internal_organs -= src
	parent = null

/obj/item/organ/internal/remove_rejuv()
	if(owner)
		owner.internal_organs -= src
		owner.internal_organs_by_name[organ_tag] = null
		owner.internal_organs_by_name -= organ_tag
		while(null in owner.internal_organs)
			owner.internal_organs -= null
		var/obj/item/organ/external/E = owner.organs_by_name[parent_organ]
		if(istype(E)) E.internal_organs -= src
	..()

// Brain is defined in brain_item.dm.
/obj/item/organ/internal/heart
	name = "heart"
	icon_state = "heart-on"
	organ_tag = O_HEART
	parent_organ = BP_CHEST
	dead_icon = "heart-off"

/obj/item/organ/internal/lungs
	name = "lungs"
	icon_state = "lungs"
	gender = PLURAL
	organ_tag = O_LUNGS
	parent_organ = BP_CHEST

/obj/item/organ/internal/lungs/process()
	..()

	if(!owner)
		return

	if (germ_level > INFECTION_LEVEL_ONE)
		if(prob(5))
			owner.emote("cough")		//respitory tract infection

	if(is_bruised())
		if(prob(2))
			spawn owner.emote("me", 1, "coughs up blood!")
			owner.drip(10)
		if(prob(4))
			spawn owner.emote("me", 1, "gasps for air!")
			owner.losebreath += 15

/obj/item/organ/internal/kidneys
	name = "kidneys"
	icon_state = "kidneys"
	gender = PLURAL
	organ_tag = O_KIDNEYS
	parent_organ = BP_GROIN

/obj/item/organ/internal/kidneys/process()

	..()

	if(!owner)
		return

	// Coffee is really bad for you with busted kidneys.
	// This should probably be expanded in some way, but fucked if I know
	// what else kidneys can process in our reagent list.
	var/datum/reagent/coffee = locate(/datum/reagent/drink/coffee) in owner.reagents.reagent_list
	if(coffee)
		if(is_broken())
			owner.adjustToxLoss(0.3 * PROCESS_ACCURACY)
		else if(is_bruised())
			owner.adjustToxLoss(0.1 * PROCESS_ACCURACY)


/obj/item/organ/internal/eyes
	name = "eyeballs"
	icon_state = "eyes"
	gender = PLURAL
	organ_tag = O_EYES
	parent_organ = BP_HEAD
	var/eye_colour = ""
	var/icon/mob_icon = null

/obj/item/organ/internal/eyes/robotize()
	..()
	name = "optical sensor"
	icon = 'icons/obj/robot_component.dmi'
	icon_state = "camera"
	dead_icon = "camera_broken"
	verbs |= /obj/item/organ/internal/eyes/proc/change_eye_color

/obj/item/organ/internal/eyes/robot
	name = "optical sensor"

/obj/item/organ/internal/eyes/robot/New()
	..()
	robotize()

/obj/item/organ/internal/eyes/proc/change_eye_color()
	set name = "Change Eye Color"
	set desc = "Changes your robotic eye color instantly."
	set category = "IC"
	set src in usr

	var/new_color = input("Pick a new color for your eyes.","Eye Color", eye_colour) as null|color
	if(new_color && owner)
		owner.eyes_color = new_color
		// Now sync the organ's eye_colour.
		update_colour()
		// Finally, update the eye icon on the mob.
		owner.update_eyes()

/obj/item/organ/internal/eyes/install(var/mob/living/carbon/human/target)
	if(..()) return 1
	// Apply our eye colour to the target.
	if(eye_colour)
		target.eyes_color = eye_colour
		target.update_eyes()

/obj/item/organ/internal/eyes/proc/regenerate_icon()
	if(!owner) return
	mob_icon = new/icon(owner.species.get_icobase(owner), "eyes[owner.body_build.index]")
	mob_icon.Blend(eye_colour, ICON_ADD)

/obj/item/organ/internal/eyes/proc/update_colour()
	if(!owner)
		return
	eye_colour = owner.eyes_color
	regenerate_icon()

/obj/item/organ/internal/eyes/take_damage(amount, var/silent=0)
	var/oldbroken = is_broken()
	..()
	if(is_broken() && !oldbroken && owner && !owner.stat)
		owner << "<span class='danger'>You go blind!</span>"

/obj/item/organ/internal/eyes/process() //Eye damage replaces the old eye_stat var.
	..()
	if(!owner)
		return
	if(is_bruised())
		owner.eye_blurry = 20
	if(is_broken())
		owner.eye_blind = 20

/obj/item/organ/internal/liver
	name = "liver"
	icon_state = "liver"
	organ_tag = "liver"
	parent_organ = BP_GROIN

/obj/item/organ/internal/liver/process()

	..()

	if(!owner)
		return

	if (germ_level > INFECTION_LEVEL_ONE)
		if(prob(1))
			owner << "<span class='danger'>Your skin itches.</span>"
	if (germ_level > INFECTION_LEVEL_TWO)
		if(prob(1))
			spawn owner.vomit()

	if(owner.life_tick % PROCESS_ACCURACY == 0)

		//High toxins levels are dangerous
		if(owner.getToxLoss() >= 60 && !owner.reagents.has_reagent("anti_toxin"))
			//Healthy liver suffers on its own
			if (src.damage < min_broken_damage)
				src.damage += 0.2 * PROCESS_ACCURACY
			//Damaged one shares the fun
			else
				var/obj/item/organ/internal/O = pick(owner.internal_organs)
				if(O)
					O.damage += 0.2  * PROCESS_ACCURACY

		//Detox can heal small amounts of damage
		if (src.damage && src.damage < src.min_bruised_damage && owner.reagents.has_reagent("anti_toxin"))
			src.damage -= 0.2 * PROCESS_ACCURACY

		if(src.damage < 0)
			src.damage = 0

		// Get the effectiveness of the liver.
		var/filter_effect = 3
		if(is_bruised())
			filter_effect -= 1
		if(is_broken())
			filter_effect -= 2

		// Do some reagent processing.
		if(owner.chem_effects[CE_ALCOHOL_TOXIC])
			if(filter_effect < 3)
				owner.adjustToxLoss(owner.chem_effects[CE_ALCOHOL_TOXIC] * 0.1 * PROCESS_ACCURACY)
			else
				take_damage(owner.chem_effects[CE_ALCOHOL_TOXIC] * 0.1 * PROCESS_ACCURACY, prob(1)) // Chance to warn them

/obj/item/organ/internal/appendix
	name = "appendix"
	icon_state = "appendix"
	parent_organ = BP_GROIN
	organ_tag = "appendix"
	var/inflamed = 0
	var/inflame_progress = 0

/mob/living/carbon/human/proc/appendicitis()
	if(stat == DEAD)
		return 0
	var/obj/item/organ/internal/appendix/A = internal_organs_by_name[O_APPENDIX]
	if(istype(A) && !A.inflamed)
		A.inflamed = 1
		return 1
	return 0

/obj/item/organ/internal/appendix/process()
	if(!inflamed || !owner)
		return

	if(++inflame_progress > 200)
		++inflamed
		inflame_progress = 0

	if(inflamed == 1)
		if(prob(5))
			owner << "<span class='warning'>You feel a stinging pain in your abdomen!</span>"
			owner.emote("me", 1, "winces slightly.")
	if(inflamed > 1)
		if(prob(3))
			owner << "<span class='warning'>You feel a stabbing pain in your abdomen!</span>"
			owner.emote("me", 1, "winces painfully.")
			owner.adjustToxLoss(1)
	if(inflamed > 2)
		if(prob(1))
			owner.vomit()
	if(inflamed > 3)
		if(prob(1))
			owner << "<span class='danger'>Your abdomen is a world of pain!</span>"
			owner.Weaken(10)

			var/obj/item/organ/external/groin = owner.get_organ(BP_GROIN)
			var/datum/wound/W = new /datum/wound/internal_bleeding(20)
			owner.adjustToxLoss(25)
			groin.wounds += W
			inflamed = 0

/obj/item/organ/internal/appendix/removed()
	if(inflamed)
		icon_state = "appendixinflamed"
		name = "inflamed appendix"
	..()
