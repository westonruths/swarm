/// @description Insert description here
// You can write your code in this editor

enum quest {
	build_stockpile,
	collect_wood,
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
		"Chop down trees to collect wood", //description
		25, //renown award
		spr_wood, //icon for the quest
	],
]

quests_number = array_length(quest_array)