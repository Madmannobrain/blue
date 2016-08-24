/*
 * Contains:
 *		Security
 *		Detective
 *		Head of Security
 */

/*
 * Security
 */
/obj/item/clothing/under/rank/warden
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for more robust protection. It has the word \"Brig Overseer\" written on the shoulders."
	name = "overseer's jumpsuit"
	icon_state = "overseeruniform"
	item_state = "bl_suit"
	worn_state = "overseeruniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/head/helmet/overseer
	name = "overseer's hat"
	desc = "It's a special cap issued to the Overseer of a securiy force."
	icon_state = "overseercap"
	body_parts_covered = 0

/obj/item/clothing/under/rank/constable
	name = "colonial officer's uniform"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "constableuniform"
	item_state = "bl_suit"
	worn_state = "constableuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/seniorconstable
	name = "colonial senior officer's uniform"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "seniorconstableuniform"
	item_state = "bl_suit"
	worn_state = "seniorconstableuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/dispatch
	name = "dispatcher's uniform"
	desc = "A dress shirt and khakis with a security patch sewn on."
	icon_state = "dispatch"
	//item_state = "dispatch"
	worn_state = "dispatch"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS
	siemens_coefficient = 0.9

/obj/item/clothing/under/rank/security2
	name = "security officer's uniform"
	desc = "It's made of a slightly sturdier material, to allow for robust protection."
	icon_state = "redshirt2"
	item_state = "bl_suit"
	worn_state = "redshirt2"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/rank/security/corp
	icon_state = "sec_corporate"
	//item_state = "sec_corporate"
	worn_state = "sec_corporate"
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden/corp
	icon_state = "warden_corporate"
	//item_state = "warden_corporate"
	worn_state = "warden_corporate"
	rolled_sleeves = 0

/obj/item/clothing/under/tactical
	name = "tactical jumpsuit"
	desc = "It's made of a slightly sturdier material than standard jumpsuits, to allow for robust protection."
	icon_state = "swatunder"
	//item_state = "swatunder"
	worn_state = "swatunder"
	armor = list(melee = 10, bullet = 5, laser = 5,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = -1
/*
 * Head of Security
 */
/obj/item/clothing/under/rank/head_of_security
	desc = "It's a jumpsuit worn by those few with the dedication to achieve the position of \"Securty Commissioner\". It has additional armor to protect the wearer."
	name = "security commissioner's jumpsuit"
	icon_state = "secchiefuniform"
	item_state = "bl_suit"
	worn_state = "secchiefuniform"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.8
	rolled_sleeves = 0

/obj/item/clothing/under/rank/head_of_security/corp
	icon_state = "hos_corporate"
	//item_state = "hos_corporate"
	worn_state = "hos_corporate"
	rolled_sleeves = 0

/obj/item/clothing/head/helmet/secchief
	name = "security commissioner's hat"
	desc = "The hat of the Security Commissioner. For showing the officers who's in charge."
	icon_state = "secchiefcap"
	body_parts_covered = 0
	siemens_coefficient = 0.4
	armor = list(melee = 40, bullet = 55, laser = 30, energy = 40, bomb = 35, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/secchief/dermal
	name = "Dermal Armour Patch"
	desc = "You're not quite sure how you manage to take it on and off, but it implants nicely in your head."
	icon_state = "dermal"
	siemens_coefficient = 0.3

/obj/item/clothing/suit/armor/secchief
	name = "armored overcoat"
	desc = "An overcoat enhanced with a special alloy for some protection and style."
	icon_state = "secchiefcoat"
	item_state = "secchiefcoat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	armor = list(melee = 45, bullet = 65, laser = 40, energy = 40, bomb = 40, bio = 0, rad = 0)
	flags_inv = HIDEJUMPSUIT
	siemens_coefficient = 0.3


//Jensen cosplay gear
/obj/item/clothing/under/rank/head_of_security/jensen
	desc = "You never asked for anything that stylish."
	name = "head of security's jumpsuit"
	icon_state = "jensen"
	item_state = "jensen"
	worn_state = "jensen"
	siemens_coefficient = 0.6
	rolled_sleeves = -1

/obj/item/clothing/suit/armor/secchief/jensen
	name = "armored trenchcoat"
	desc = "A trenchcoat augmented with a special alloy for some protection and style."
	icon_state = "hostrench"
	item_state = "hostrench"
	flags_inv = 0
	siemens_coefficient = 0.6

/*
 * Navy uniforms
 */

/obj/item/clothing/under/rank/security/navyblue
	name = "security officer's uniform"
	desc = "The latest in fashionable security outfits."
	icon_state = "officerblueclothes"
	item_state = "ba_suit"
	worn_state = "officerblueclothes"
	rolled_sleeves = 0

/obj/item/clothing/under/rank/head_of_security/navyblue
	desc = "The insignia on this uniform tells you that this uniform belongs to the Head of Security."
	name = "head of security's uniform"
	icon_state = "hosblueclothes"
	item_state = "ba_suit"
	worn_state = "hosblueclothes"
	rolled_sleeves = 0

/obj/item/clothing/under/rank/warden/navyblue
	desc = "The insignia on this uniform tells you that this uniform belongs to the Warden."
	name = "warden's uniform"
	icon_state = "wardenblueclothes"
	item_state = "ba_suit"
	worn_state = "wardenblueclothes"
	rolled_sleeves = 0

//Investigator
/obj/item/clothing/under/investigator
	name = "worn suit"
	desc = "That's a simple white dress shirt with the pants."
	icon_state = "investigator"
	item_state = "det"
	worn_state = "investigator"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0

/obj/item/clothing/under/investigator/alt
	desc = "That's a simple blue dress shirt with the jeans."
	icon_state = "investigatoralt"
	item_state = "det"
	worn_state = "investigatoralt"

//Forensic Technician

/obj/item/clothing/under/forensic
	name = "black turtleneck"
	desc = "That's the black turtleneck with pants."
	icon_state = "forensictech"
	item_state = "bl_suit"
	worn_state = "forensictech"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0)
	siemens_coefficient = 0.9
	rolled_sleeves = 0
