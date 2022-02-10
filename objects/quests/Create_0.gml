/// @description Insert description here
// You can write your code in this editor

enum quest {
	build_stockpile,
	collect_wood,
	build_room,
	build_beds,
	mine_ore,
	build_stove,
	collect_meat,
	cook_meals,
	harvest_wheat,
}

quest_array = [
	[
		"Build a stockpile", //name of quest
		0, //status -1 inactive, 0 active
		"Build a stockpile to store items", //description
		25, //renown award
		spr_stockpile, //icon for the quest
	],
	[
		"Collect 10 wood", //name of quest
		0, //status -1 inactive, 0 active
		"Use the chop selection button", //description
		50, //renown award
		spr_axe_btn, //icon for the quest
	],
	[
		"Build a room", //name of quest
		-1, //status -1 inactive, 0 active
		"Construct walls and a door", //description
		75, //renown award
		spr_home, //icon for the quest
	],
	[
		"Build beds", //name of quest
		-1, //status -1 inactive, 0 active
		"Enough for each settler", //description
		75, //renown award
		spr_bed, //icon for the quest
	],
	[
		"Mine 10 stone", //name of quest
		0, //status -1 inactive, 0 active
		"Use the mining selection button", //description
		50, //renown award
		spr_pickaxe_btn, //icon for the quest
	],
	[
		"Build a stove", //name of quest
		-1, //status -1 inactive, 0 active
		"This is where food is cooked", //description
		75, //renown award
		spr_stove, //icon for the quest
	],
	[
		"Collect 4 raw meat", //name of quest
		-1, //status -1 inactive, 0 active
		"Hunt animals to collect meat", //description
		75, //renown award
		spr_bull, //icon for the quest
	],
	[
		"Cook 10 meals", //name of quest
		-1, //status -1 inactive, 0 active
		"Use a stove to cook raw food", //description
		75, //renown award
		spr_meal, //icon for the quest
	],
	[
		"Harvest 10 wheat", //name of quest
		-1, //status -1 inactive, 0 active
		"Plant and grow wheat", //description
		75, //renown award
		spr_wheat_icon, //icon for the quest
	],
]

quests_number = array_length(quest_array)