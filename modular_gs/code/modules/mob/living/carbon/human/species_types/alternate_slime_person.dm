
//A species of slime people with a tolerance to cold and susceptibility to heat
/datum/species/jelly/roundstartslime/alternate
	name = "Evolved Slimepeople"
	id = SPECIES_SLIMESTARTALT

	coldmod = 0.25
	heatmod = 6
	bodytemp_normal = 297.9
	bodytemp_heat_damage_limit = 358.15 //Jelly can handle slightly higher temps than people, up to 85c, but will take extreme damage after that point

	hair_alpha = 255
	facial_hair_alpha = 255
	specific_alpha = 255
	markings_alpha = 255


/datum/species/jelly/roundstartslime/alternate/get_species_description()
	return list(
		"A more evolved form of the slimepeople initially created by Nanotrasen. These slime people lack the traditionally transparent slime of their predecessors and have developed a resistance to cold due to the years of travel in space",
		"They are composed of slime jelly, and healed by toxicity.",
	)

/datum/species/jelly/get_species_lore()
	return list(
		"A more evolved form of the slime species created by Nanotrasen's efforts. \
		These Slimepeople, through their time living in the harsh environments of space have evolved some changes to better adapt them to these conditions. \
		They have developed a strong resistance to the extreme temperatures and a more \"lifelike\" appearance from their now opaque insulated jelly. \
		However, their cold-resistant jelly has made them much more susceptible to high temperatures, though, their tolerant  range of temps is slightly higher.",

		"Much like their predecessors, they possess the same highly adaptable bodies, able to shape their jelly into different forms, alongside having the same simple organs."
	)


/datum/species/jelly/roundstartslime/alternate/prepare_human_for_preview(mob/living/carbon/human/slime)
	slime.dna.features["mcolor"] = "#56FFFF"
	regenerate_organs(slime, src, visual_only = TRUE)
	slime.hairstyle = "Bob Hair 2"
	slime.hair_color = COLOR_CYAN
	slime.update_body(is_creating = TRUE)
