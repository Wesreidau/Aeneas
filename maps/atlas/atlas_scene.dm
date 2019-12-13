//This file sets up zlevels
/datum/scene/atlas
	// Nikov 12/4/19
	//------------------
	name = "MSV Atlas" 	//The name of the location. This may be shown in interfaces and should be human-readable
	id = "msv_atlas"	//ID must be unique, landmarks will use it to link levels to this scene datum

//Base type of level, this one won't be instantiated but subtypes will
/datum/level/atlas
	//Authortime
	//----------------
	name = "Deck 0" //Name of the level. This should NOT include the name of the scene, as that will be automatically prepended in most cases
	id	=	"atlas_deck0" //ID of the level, this must be unique, so do include the scene name in this case. this will be used for a landmark to find this level
	scene_id = "msv_atlas"	//ID of the scene, must be unique, used to link this level to the scene datum
	base_type	= /datum/level/atlas //The parent/base type of this level. It will be excluded from the all_level_datums list


// Hub levels.


/datum/level/atlas/bow
	// Nikov 12/4/19
	//----------------
	name = "D0 Bow"
	id	=	"atlas_deck0"
	connections = list(DOWN_S =  "atlas_deck1")

/obj/effect/landmark/map_data/atlas/bow
	level_id	=	"atlas_deck0"

/datum/level/atlas/quarterdeck
	// Nikov 12/4/19
	//----------------
	name = "D1 Quarterdeck"
	id	=	"atlas_deck1"
	connections = list(UP_S = "atlas_deck0",
	DOWN_S =  "atlas_deck2")

/obj/effect/landmark/map_data/atlas/quarterdeck
	level_id	=	"atlas_deck1"


/datum/level/atlas/citadel
	// Nikov 12/4/19
	//----------------
	name = "D2 Citadel"
	id	=	"atlas_deck2"
	connections = list(UP_S = "atlas_deck1",
	DOWN_S =  "atlas_deck3")

/obj/effect/landmark/map_data/atlas/citadel
	level_id	=	"atlas_deck2"


/datum/level/atlas/midships
	// Nikov 12/4/19
	//----------------
	name = "D3 Midships"
	id	=	"atlas_deck3"

	connections = list(UP_S = "atlas_deck2",
	DOWN_S =  "atlas_deck4")

/obj/effect/landmark/map_data/atlas/midships
	level_id	=	"atlas_deck3"


/datum/level/atlas/machinery
	// Nikov 12/4/19
	//----------------
	name = "D4 Machinery"
	id	=	"atlas_deck4"

	connections = list(UP_S = "atlas_deck3",
	DOWN_S =  "atlas_deck5")


/obj/effect/landmark/map_data/atlas/machinery
	level_id	=	"atlas_deck4"

/datum/level/atlas/engine
	// Nikov 12/4/19
	//----------------
	name = "D5 Engine"
	id	=	"atlas_deck5"
	connections = list(UP_S = "atlas_deck4",
	DOWN_S =  "atlas_deck6")

/obj/effect/landmark/map_data/atlas/engine
	level_id	=	"atlas_deck5"


/datum/level/atlas/upperkeel
	// Nikov 12/4/19
	//----------------
	name = "D6 Upper Keel"
	id	=	"atlas_deck6"
	connections = list(UP_S = "atlas_deck5",
	DOWN_S =  "atlas_deck7")

/obj/effect/landmark/map_data/atlas/upperkeel
	level_id	=	"atlas_deck6"


/datum/level/atlas/lowerkeel
	// Nikov 12/4/19
	//----------------
	name = "D6 Lower Keel"
	id	=	"atlas_deck7"
	connections = list(UP_S = "atlas_deck6",
	DOWN_S =  "atlas_deck8")

/obj/effect/landmark/map_data/atlas/lowerkeel
	level_id	=	"atlas_deck7"


/datum/level/atlas/reactor
	// Nikov 12/4/19
	//----------------
	name = "D8 Reactor"
	id	=	"atlas_deck8"
	connections = list(UP_S = "atlas_deck7",
	DOWN_S =  "atlas_overboard")

/obj/effect/landmark/map_data/atlas/reactor
	level_id	=	"atlas_deck8"


// Overboard level. Placeholder.


/datum/level/atlas/overboard
	// Nikov 12/4/19
	//----------------
	name = "Overboard"
	id	=	"atlas_overboard"

/obj/effect/landmark/map_data/atlas/overboard
	level_id	=	"atlas_overboard"


// Torus Levels


/datum/level/atlas/innerring
	// Nikov 12/4/19
	//----------------
	name = "L0 Inner Ring"
	id	=	"atlas_level0"
	connections = list(DOWN_S =  "atlas_level1")

/obj/effect/landmark/map_data/atlas/innerring
	level_id	=	"atlas_level0"

/datum/level/atlas/promenade
	// Nikov 12/4/19
	//----------------
	name = "L1 Promenade"
	id	=	"atlas_level1"
	connections = list(UP_S = "atlas_level0",
	DOWN_S =  "atlas_level2")

/obj/effect/landmark/map_data/atlas/promenade
	level_id	=	"atlas_level1"


/datum/level/atlas/mezzanine
	// Nikov 12/4/19
	//----------------
	name = "L2 Mezzanine"
	id	=	"atlas_level2"
	connections = list(UP_S = "atlas_level1",
	DOWN_S =  "atlas_level3")

/obj/effect/landmark/map_data/atlas/mezzanine
	level_id	=	"atlas_level2"


/datum/level/atlas/avenue
	// Nikov 12/4/19
	//----------------
	name = "L3 Avenue"
	id	=	"atlas_level3"

	connections = list(UP_S = "atlas_level2",
	DOWN_S =  "atlas_level4")

/obj/effect/landmark/map_data/atlas/avenue
	level_id	=	"atlas_level3"


/datum/level/atlas/outerring
	// Nikov 12/4/19
	//----------------
	name = "L4 Outer Ring"
	id	=	"atlas_level4"

	connections = list(UP_S = "atlas_level3",
	DOWN_S =  "atlas_overboard")


/obj/effect/landmark/map_data/atlas/outerring
	level_id	=	"atlas_level4"