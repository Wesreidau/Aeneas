/*
	A mirror turf is a visual-only turf which completely reflects the state of another real turf somewhere.
	Every interaction with a mirror turf is passed to the real one. This includes:
		Any atom entering it is instantly moved to the real
		Any attempt to fetch its contents, gets the real contents
		Any attempt to get a turf a its coordinates, gets the real turf
*/
/turf/mirror
	var/turf/reflection	//The real turf that we're reflecting
	var/vector2/reflection_coords

//Slightly hacky prototype for mirror movement
/turf/mirror/Entered(var/atom/movable/mover, var/atom/old_loc)
	if (reflection && !ismirror(old_loc))
		mover.loc = reflection
		return reflection.Entered(mover, old_loc)

	.=..()

/turf/proc/is_mirror()
	return FALSE

/turf/mirror/is_mirror()
	return TRUE

/turf/mirror/proc/find_reflection()
	var/datum/level/L = get_level_from_z(z)
	if (!L)
		log_world("Error: Turf located at [jumplink(src)] failed to find associated level")
		return

	reflection_coords = new /vector2(Wrap(x, L.bounds_lower.x, L.bounds_upper.x), Wrap(y, L.bounds_lower.y, L.bounds_upper.y))
	reflection = locate(reflection_coords.x, reflection_coords.y, z)
	update_icon()

/turf/mirror/update_icon()
	vis_contents |= reflection
	icon_state = "transparent"

//Critical proc, returns the reflection where other turfs would return themselves
/turf/mirror/get_self()
	return reflection

//Mirror turfs don't do atmos. Calls to update it are passed to the reflection if applicable
/turf/mirror/update_air_properties()
	if (reflection)
		reflection.update_air_properties()
	return