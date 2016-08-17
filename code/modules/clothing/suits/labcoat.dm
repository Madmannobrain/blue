/obj/item/clothing/suit/storage/toggle/labcoat
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills."
	icon_state = "labcoat_open"
	item_state = "labcoat" //Is this even used for anything?
	base_icon = "labcoat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	allowed = list(/obj/item/device/analyzer,/obj/item/stack/medical,/obj/item/weapon/dnainjector,
			/obj/item/weapon/reagent_containers/dropper,/obj/item/weapon/reagent_containers/syringe,\
			/obj/item/weapon/reagent_containers/hypospray,/obj/item/device/healthanalyzer,\
			/obj/item/device/flashlight/pen,/obj/item/weapon/reagent_containers/glass/beaker,\
			/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/storage/pill_bottle,/obj/item/weapon/paper)
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 50, rad = 0)
	
/obj/item/clothing/suit/storage/toggle/labcoat/augmented
	name = "augmented labcoat"
	desc = "What a lovely diods! Blink."
	icon_state = "labcoat_aug"

/obj/item/clothing/suit/storage/toggle/labcoat/red
	name = "red labcoat"
	desc = "A suit that protects against minor chemical spills. This one is red."
	icon_state = "red_labcoat_open"
	item_state = "red_labcoat"
	base_icon = "red_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/blue
	name = "blue labcoat"
	desc = "A suit that protects against minor chemical spills. This one is blue."
	icon_state = "blue_labcoat_open"
	item_state = "blue_labcoat"
	base_icon = "blue_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/purple
	name = "purple labcoat"
	desc = "A suit that protects against minor chemical spills. This one is purple."
	icon_state = "purple_labcoat_open"
	item_state = "purple_labcoat"
	base_icon = "purple_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/orange
	name = "orange labcoat"
	desc = "A suit that protects against minor chemical spills. This one is orange."
	icon_state = "orange_labcoat_open"
	item_state = "orange_labcoat"
	base_icon = "orange_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/green
	name = "green labcoat"
	desc = "A suit that protects against minor chemical spills. This one is green."
	icon_state = "green_labcoat_open"
	item_state = "green_labcoat"
	base_icon = "green_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/yellow
	name = "yellow labcoat"
	desc = "A suit that protects against minor chemical spills. This one is yellow."
	icon_state = "yellow_labcoat_open"
	item_state = "yellow_labcoat"
	base_icon = "yellow_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/pink
	name = "pink labcoat"
	desc = "A suit that protects against minor chemical spills. This one is pink."
	icon_state = "pink_labcoat_open"
	item_state = "pink_labcoat"
	base_icon = "pink_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/cmo
	name = "chief medical officer's labcoat"
	desc = "Bluer than the standard model."
	icon_state = "labcoat_cmo_open"
	item_state = "labcoat_cmo"
	base_icon = "labcoat_cmo"

/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt
	name = "chief medical officer labcoat"
	desc = "A labcoat with command blue highlights."
	icon_state = "labcoat_cmoalt_open"
	base_icon = "labcoat_cmoalt"

/obj/item/clothing/suit/storage/toggle/labcoat/mad
	name = "The Mad's labcoat"
	desc = "It makes you look capable of konking someone on the noggin and shooting them into space."
	icon_state = "labgreen_open"
	item_state = "labgreen"
	base_icon = "labgreen"

/obj/item/clothing/suit/storage/toggle/labcoat/genetics
	name = "Geneticist labcoat"
	desc = "A suit that protects against minor chemical spills. Has a blue stripe on the shoulder."
	icon_state = "labcoat_gen_open"
	base_icon = "labcoat_gen"

/obj/item/clothing/suit/storage/toggle/labcoat/chemist
	name = "Chemist labcoat"
	desc = "A suit that protects against minor chemical spills. Has an orange stripe on the shoulder."
	icon_state = "labcoat_chem_open"
	base_icon = "labcoat_chem"

/obj/item/clothing/suit/storage/toggle/labcoat/virologist
	name = "Virologist labcoat"
	desc = "A suit that protects against minor chemical spills. \
			Offers slightly more protection against biohazards than the standard model. \
			Has a green stripe on the shoulder."
	icon_state = "labcoat_vir_open"
	base_icon = "labcoat_vir"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 60, rad = 0)

/obj/item/clothing/suit/storage/toggle/labcoat/science
	name = "Scientist labcoat"
	desc = "A suit that protects against minor chemical spills. Has a purple stripe on the shoulder."
	icon_state = "labcoat_tox_open"
	base_icon = "labcoat_tox"

/obj/item/clothing/suit/storage/toggle/labcoat/emt
	name = "EMT's labcoat"
	desc = "A dark blue labcoat with reflective strips for emergency medical technicians."
	icon_state = "labcoat_emt_open"
	base_icon = "labcoat_emt"

/obj/item/clothing/suit/storage/toggle/labcoat/forensic
	name = "forensics labcoat"
	desc = "That's a long white labcoat with the forensic insignia on ot."
	icon_state = "forensictech_open"
	base_icon = "forensictech"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 30, rad = 0)
	allowed = list(/obj/item/weapon/tank/emergency_oxygen, /obj/item/device/flashlight,/obj/item/weapon/gun/energy,/obj/item/weapon/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/weapon/melee/baton,/obj/item/weapon/handcuffs,/obj/item/weapon/storage/fancy/cigarettes,/obj/item/weapon/flame/lighter,/obj/item/device/taperecorder,/obj/item/device/uv_light)
