//None of these specify a distance to check within
/decl/dist_check/proc/within_dist(var/atom/a, var/atom/b)
	return FALSE

/decl/dist_check/adjacent/within_dist(var/atom/a, var/atom/b)
	return a.Adjacent(b)

/decl/dist_check/in_view/within_dist(var/atom/a, var/atom/b)
	return (b in physical_view(world.view, a))

/decl/dist_check/in_range/within_dist(var/atom/a, var/atom/b)
	return (b in physical_range(world.view, a))

/decl/dist_check/same_z_level/within_dist(var/atom/a, var/atom/b)
	var/turf/turf_a = get_turf(a)
	var/turf/turf_b = get_turf(b)
	return turf_a && turf_b && turf_a.z == turf_b.z

/decl/dist_check/connected_z_level/within_dist(var/atom/a, var/atom/b)
	var/turf/turf_a = get_turf(a)
	var/turf/turf_b = get_turf(b)
	return turf_a && turf_b && AreConnectedZLevels(turf_a.z, turf_b.z)

/decl/dist_check/omni/within_dist()
	return TRUE
