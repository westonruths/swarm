/// @description Insert description here
// You can write your code in this editor

var i = 0; repeat(quests_number) {
	switch(i) {
		#region Build stockpile
		case quest.build_stockpile:
			if quest_array[i][1] != -1 {
				if instance_exists(obj_stockpile) {
					quest_array[i][1] = -1
					var complete = instance_create_layer(global.view_width/4, global.view_height/4,
						"Menu_Objects",obj_quest_complete);
					with (complete) {
						name = other.quest_array[i][0]
						renown_reward = other.quest_array[i][3]
					}
				}
			}
		break;
		#endregion
		
		#region Collect Wood
		case quest.collect_wood:
		
		break;
		#endregion
		
		
	}
	
	i++;
}