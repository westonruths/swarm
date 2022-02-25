// Logic to cut down trees
function Mood() {
	
	if (mood.mood >= 20) || mood.thoughtactive[mood_thoughts.catharsis] == 1 || instance_exists(defend_target) {
		exit
	}
	
	if first_break {
		//begin moodiness and choose duration
		mood.thoughtactive[mood_thoughts.mental_break] = 1
		moody_end = irandom_range(12, 24)
		moody_counter += 1
		first_break = false
		
		var prompt = instance_create_layer(global.view_width/4, global.view_height/4, "Menu_Prompts",obj_tantrum_prompt);
		with (prompt) {
			pawn_name = other.name
			pawn = other
		}
	}
	
	if moody_counter >= moody_end {
		//end moodiness
		mood.thoughtactive[mood_thoughts.catharsis] = 1
		mood.mood = mood.mood_base
		moody_counter = 0
		first_break = true
	}
	
	targetX = x
	targetY = y
	
	sprite_index = spr_pawn_moody
	current_task = "Moody Tantrum Ends in " + string(moody_end-moody_counter) + " hours";
}