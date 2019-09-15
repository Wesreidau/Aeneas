/*
	A mirror turf is a visual-only turf which completely reflects the state of another real turf somewhere.
	Every interaction with a mirror turf is passed to the real one. This includes:
		Any atom entering it is instantly moved to the real
		Any attempt to fetch its contents, gets the real contents
		Any attempt to get a turf a its coordinates, gets the real turf
*/
/turf/mirror
	var/turf/reflection	//The real turf that we're reflecting