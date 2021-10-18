//inverse of /datum/artifact_effect/heat, the two effects split up for neatness' sake
/datum/artifact_effect/cold
	name = "cold"
	var/target_temp

/datum/artifact_effect/cold/New()
	..()
	target_temp = rand(0, 250)
	effect = pick(EFFECT_TOUCH, EFFECT_AURA)
	effect_type = pick(EFFECT_ORGANIC, EFFECT_BLUESPACE, EFFECT_SYNTH)

/datum/artifact_effect/cold/DoEffectTouch(var/mob/user)
<<<<<<< HEAD
=======
	var/atom/holder = get_master_holder()
>>>>>>> a186da160f9... Merge pull request #8339 from Mechoid/AnomBattery
	if(holder)
		to_chat(user, "<font color='blue'>A chill passes up your spine!</font>")
		var/datum/gas_mixture/env = holder.loc.return_air()
		if(env)
			env.temperature = max(env.temperature - rand(5,50), 0)

/datum/artifact_effect/cold/DoEffectAura()
<<<<<<< HEAD
=======
	var/atom/holder = get_master_holder()
>>>>>>> a186da160f9... Merge pull request #8339 from Mechoid/AnomBattery
	if(holder)
		var/datum/gas_mixture/env = holder.loc.return_air()
		if(env && env.temperature > target_temp)
			env.temperature -= pick(0, 0, 1)
