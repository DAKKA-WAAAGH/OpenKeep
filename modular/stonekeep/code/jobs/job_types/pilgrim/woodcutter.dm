/datum/advclass/pilgrim/stonekeep/woodcutter
	name = "Woodcutter"
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list("Humen",
	"Elf",
	"Half-Elf",
	"Tiefling",
	"Dwarf",
	"Aasimar",
		"Changeling",
		"Skylancer",
		"Ogrun",

	)
	outfit = /datum/outfit/job/sk/pilgrim/woodcutter
	category_tags = list(CTAG_DISABLED)
	apprentice_name = "Woodcutter"
	cmode_music = 'sound/music/cmode/combat_guard.ogg'

/datum/outfit/job/sk/pilgrim/woodcutter/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 3, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind?.adjust_skillrank(/datum/skill/misc/athletics, pick(3,3,4), TRUE)
	H.mind?.adjust_skillrank(/datum/skill/labor/lumberjacking, 4, TRUE)
	belt = /obj/item/storage/belt/leather
	shirt = /obj/item/clothing/shirt/shortshirt/random
	pants = /obj/item/clothing/pants/trou
	head = /obj/item/clothing/head/brimmed
	neck = /obj/item/clothing/neck/coif
	shoes = /obj/item/clothing/shoes/boots/leather
	backr = /obj/item/storage/backpack/satchel
	neck = /obj/item/storage/belt/pouch/coins/poor
	wrists = /obj/item/clothing/wrists/bracers/leather
	armor = /obj/item/clothing/armor/gambeson/light/striped
	beltr = /obj/item/weapon/axe/iron
	beltl = /obj/item/weapon/knife/villager
	backpack_contents = list(/obj/item/flint = 1, /obj/item/key/artificer = 1)
	H.change_stat("strength", 1)
	H.change_stat("endurance", 1) // Tree chopping builds endurance
