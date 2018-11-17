/datum/trait
	var/name
	var/desc = "Contact a developer if you see this trait."

	var/cost = 0			// 0 is neutral, negative cost means negative, positive cost means positive.
	var/list/var_changes	// A list to apply to the custom species vars.
	var/list/excludes		// Store a list of paths of traits to exclude, but done automatically if they change the same vars.

//Proc can be overridden lower to include special changes, make sure to call up though for the vars changes
/datum/trait/proc/apply(var/datum/species/S,var/mob/living/carbon/human/H, var/obj/item/organ/external/head/G)
	ASSERT(S)
	if(var_changes)
		for(var/V in var_changes)
			S.vars[V] = var_changes[V]
	return

//Similar to the above, but for removing. Probably won't be called often/ever.
/datum/trait/proc/remove(var/datum/species/S)
	ASSERT(S)
	return

//Basic trimmed list because im too lazy to port all the snowflake stuff. Works because postive, neutral, and negative is autosorted based off their cost.


/datum/trait/speed_fast
	name = "Haste"
	desc = "Allows you to move faster on average than baseline."
	cost = 4
	var_changes = list("slowdown" = -0.5)

/datum/trait/endurance_high
	name = "High Endurance"
	desc = "Increases your maximum total hitpoints to 125"
	cost = 4
	var_changes = list("total_health" = 125)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)

/datum/trait/darksight
	name = "Darksight"
	desc = "Allows you to see a short distance in the dark."
	cost = 1
	var_changes = list("darksight_range" = 3, "darksight_tint" = DARKTINT_MODERATE)

/datum/trait/darksight_plus
	name = "Darksight (Major)"
	desc = "Allows you to see a longer distance in the dark."
	cost = 2
	var_changes = list("darksight_range" = 6, "darksight_tint" = DARKTINT_GOOD)
/*
/datum/trait/glowing_eyes
	name = "Glowing Eyes"
	desc = "Your eyes glow."	//MY VISION IS AUGMENTED
	cost = 0
	var_changes = list("glowing_eyes" = TRUE)
*/
/datum/trait/speed_slow
	name = "Slowdown"
	desc = "Allows you to move slower on average than baseline."
	cost = -2
	var_changes = list("slowdown" = 0.5)

/datum/trait/endurance_low
	name = "Low Endurance"
	desc = "Reduces your maximum total hitpoints to 75."
	cost = -2
	var_changes = list("total_health" = 75)

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		H.setMaxHealth(S.total_health)