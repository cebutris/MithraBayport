/* This is the beginning and the end. The rise and the fall.
	Our gait will begin its saunter at the source, when the infant learns to crawl.*/

/datum/species/akula
	name = SPECIES_AKULA
	name_plural = SPECIES_AKULA
	icobase = 'modular_mithra/icons/mob/human_races/species/akula/body.dmi'
	deform = 'modular_mithra/icons/mob/human_races/species/akula/deformed_body.dmi'
	husk_icon = 'modular_mithra/icons/mob/human_races/species/akula/husk.dmi'
	preview_icon = 'modular_mithra/icons/mob/human_races/species/akula/preview.dmi'
	tail = "aktail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/tail, /datum/unarmed_attack/punch, /datum/unarmed_attack/bite/sharp)

	description = "Sharks! This is just a placeholder description!"

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR
