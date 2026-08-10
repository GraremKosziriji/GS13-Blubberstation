/datum/preference/toggle/slimepeople_transparency
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_identifier = PREFERENCE_CHARACTER
	savefile_key = "slimepeople_transparency"
	default_value = FALSE

/datum/preference/toggle/slimepeople_transparency/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	target.dna.features[SLIMEPEOPLE_TRANSPARENCY_OVERIDE] = value
	return

