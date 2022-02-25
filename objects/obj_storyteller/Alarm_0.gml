/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_storyteller_prompt) exit

#region Tutorial
if (tutorial_counter_hrs == 0) {
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Arrival"
		detail = "Your settlers arrive on the outskirts of a new land. \nIt's time to begin anew... \n \nLet's run through a quick tutorial."
		prompt_sprite = noone
		storyteller_script = A_time_controls
	}		
	
	tutorial_counter_hrs = -1
}

#endregion

#region Goblin Raid
raid_counter_hrs -= 1

if (raid_counter_hrs <= 0) {
	num_goblins = 2

	raid_counter_hrs = 72 + irandom_range(-2,2)
	
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(365, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		
		title = "Goblin Raid!"
		detail = "A horde of " + string(other.num_goblins) + " goblins are attacking! \nPrepare the defenses."
		prompt_sprite = spr_goblin_attack
		storyteller_script = goblin_raid
	}
	
	
	exit
}
#endregion

#region Save Settler
save_settler_counter_hrs -= 1

if (save_settler_counter_hrs <= 0) {

	save_settler_counter_hrs = (100 + irandom_range(0,5)) * instance_number(obj_pawn)
	
	var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_storyteller_prompt);
	with (prompt) {
		instance_create_layer(370-70, 256, "Menu_Prompt_Btns",obj_accept_storyteller);
		instance_create_layer(370+70, 256, "Menu_Prompt_Btns",obj_decline_storyteller);
		
		title = "A Call for Help"
		detail = "A traveler is being pursued by goblins! They offer to join your town if you fend off their pursuers. Do you accept?"
		storyteller_script = save_settler
	}
	exit
}
#endregion