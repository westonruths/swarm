/// @description Insert description here
// You can write your code in this editor

//if instance_exists(obj_quest_complete) { exit }

// Renown Leveling
if (global.renown > global.renown_next_level) {
	global.renown_level += 1
	global.renown -= global.renown_next_level
	global.renown_next_level = round(0.04 * (global.renown_level ^ 3) + 0.8 * (global.renown_level ^ 2) + 2 * global.renown_level) * 10
}

// Quest Logic
var i = 0; repeat(quests_number) {
	switch(i) {
		#region Build stockpile
		case quest.build_stockpile:
			if quest_array[i][1] != -1 {
				if instance_exists(obj_stockpile) {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		#region Collect Wood
		case quest.collect_wood:
			if quest_array[i][1] != -1 {
				if instance_number(obj_wood) >= 10 {
					complete_quest(i)
				}
			}
		break;
		#endregion
		
		
	}
	
	i++;
}