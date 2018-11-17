/*
		All neutral traits go here. They are automagically sorted based off their cost, but seperating em this way is easier to search through.
*/

/datum/trait/glowing_eyes
	name = "Glowing Eyes"
	desc = "Your eyes glow in the dark."	//MY VISION IS AUGMENTED
	cost = 0

	apply(var/datum/species/S,var/mob/living/carbon/human/H)
		..(S,H)
		for(var/obj/item/organ/external/head/O in H.organs)
			O.glowing_eyes = TRUE