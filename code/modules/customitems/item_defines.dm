////Affectuum////

/obj/item/clothing/under/blouse
	name = "blouse"
	desc = "Common space blouse."
	icon_state = "blouse"

/obj/item/clothing/suit/storage/cardigan
	name = "cardigan"
	desc = "Common space cardigan"
	icon_state = "cardigan"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/shoes/gazelle
	name = "gazelle"
	desc = "A pair of common space gazelle"
	icon_state = "gazelle"


////DoubleComrader43////

/obj/item/clothing/under/blue_shirt
	name = "blue shirt"
	desc = "classical blue shit. Colored in blue." // Need new description.
	icon_state = "blue_shirt"
	item_state = "blue_shirt"
	worn_state = "blue_shirt"

/obj/item/clothing/suit/storage/russian_style
	name = "Soviet Jacket"
	desc = "Russian style jacket."
	icon_state = "jacket"

/obj/item/clothing/suit/storage/russian_style/verb/hide_collar()
	set name = "Hide collar"
	set category = "Objects"
	if(icon_state == initial(icon_state))
		icon_state = "jacket_alt"
		usr << "<span class = 'notice'>You open collar</span>"
	else
		icon_state = initial(icon_state)
		usr << "<span class = 'notice'>You hide collar</span>"
	update_clothing_icon()

////D00k-N00kem////

/obj/item/clothing/suit/storage/toggle/labcoat/augmented
	name = "augmented labcoat"
	desc = "What a lovely diods! Blink."
	icon_state = "labcoat_aug"

/obj/item/clothing/suit/armor/secchief/hosold
	icon_state = "hosold"
	item_state = "hosold"

/obj/item/clothing/head/helmet/secchief/hosold
	name = "old security chief's hat hat"
	desc = "The hat of the Head of Security. For showing the officers who's in charge."
	icon_state = "hoscapold"


////Marcus////

/obj/item/clothing/under/sweaterj
	name = "sweaterj"
	desc = "Common space sweater."
	icon_state = "sweaterj"

/obj/item/clothing/suit/storage/pullover
	name = "pullover"
	desc = "Common space pullover"
	icon_state = "pullover"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/shoes/red_boots
	name = "red boots"
	desc = "Stylish red boots. All the rage!"
	icon_state = "red_boots"


////Subber////

/obj/item/clothing/suit/ianshirt/ash
	name = "Ash t-shirt"
	desc = "A t-shirt with a picture of some guy. Good for sleeping in. Smells like obsession."
	icon_state = "ashshirt"

