/*
		I have no idea what this does exactly or how it works, but goddamnit I'm gonna make it work.

																								-Tori
*/

/datum/gear_tweak/polychrome
	var/primary
	var/secondary
	var/tertiary

/datum/gear_tweak/polychrome/get_contents()
	return "Primary: <font color='[primary]'>&#9899;</font>, Secondary: <font color='[secondary]'>&#9899;</font>, Tertiary: <font color='[tertiary]'>&#9899;</font>"

/datum/gear_tweak/polychrome/get_metadata(var/user, var/metadata)
	var/choice = input(user,"polychromic thread options", "Clothing Recolor") as null|anything in list("Primary Color", "Secondary Color", "Tertiary Color")
	switch(choice)	//Lets the list's options actually lead to something
		if("Primary Color")
			var/primary_color_input = input(usr,"","Choose Primary Color",primary) as color|null	//color input menu, the "|null" adds a cancel button to it.
			if(primary_color_input)	//Checks if the color selected is NULL, rejects it if it is NULL.
				primary = sanitize_hexcolor(primary_color_input, primary)	//formats the selected color properly
		if("Secondary Color")
			var/secondary_color_input = input(usr,"","Choose Secondary Color",secondary) as color|null
			if(secondary_color_input)
				secondary = sanitize_hexcolor(secondary_color_input, secondary)
		if("Tertiary Color")
			var/tertiary_color_input = input(usr,"","Choose Tertiary Color",tertiary) as color|null
			if(tertiary_color_input)
				tertiary = sanitize_hexcolor(tertiary_color_input, tertiary)

/datum/gear_tweak/polychrome/tweak_item(var/obj/item/clothing/PC)
	if(primary && PC.hasprimary)
		PC.primary_color = primary

	if(secondary && PC.hassecondary)
		PC.secondary_color = secondary

	if(tertiary && PC.hastertiary)
		PC.tertiary_color = tertiary

	PC.update_icon()