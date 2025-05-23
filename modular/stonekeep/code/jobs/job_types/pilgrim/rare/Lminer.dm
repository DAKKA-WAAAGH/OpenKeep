//dwarf, master miner

/datum/advclass/pilgrim/rare/stonekeep/minermaster
	name = "Master Miner"
	tutorial = "Hardy underdwellers who dedicated their entire life to a singular purpose: \
	the acquisition of ore, precious stones, and anything deep below the mines."
	allowed_ages = list(AGE_OLD)
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list("Dwarf", "Dark Elf")
	outfit = /datum/outfit/job/sk/pilgrim/minermaster
	maximum_possible_slots = 1
	pickprob = 15
	category_tags = list(CTAG_PILGRIM, CTAG_TOWNER)
	apprentice_name = "Miner Apprentice"

/datum/outfit/job/sk/pilgrim/minermaster/pre_equip(mob/living/carbon/human/H)
	..()
	head = /obj/item/clothing/head/helmet/leather/minershelm
	pants = /obj/item/clothing/pants/trou
	armor = /obj/item/clothing/armor/gambeson/light/striped
	shirt = /obj/item/clothing/shirt/undershirt/random
	shoes = /obj/item/clothing/shoes/boots/leather
	belt = /obj/item/storage/belt/leather
	neck = /obj/item/storage/belt/pouch/coins/mid
	beltl = /obj/item/weapon/pick
	backl = /obj/item/storage/backpack/backpack
	if(H.age == AGE_OLD)
		H.change_stat("endurance", -1)
		H.mind?.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/engineering, 1, TRUE)
	if(H.mind)
		H.mind?.adjust_skillrank(/datum/skill/combat/axesmaces, 2, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/crafting, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/labor/mining, 6, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/athletics, pick(3,3,4), TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/masonry, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/traps, 1, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/engineering, 4, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/craft/smelting, 6, TRUE)
		H.mind?.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		H.change_stat("strength", 2)
		H.change_stat("intelligence", 1)
		H.change_stat("endurance", 1)
		H.change_stat("constitution", 1)
		H.change_stat("perception", 1)
