// Logic to cut down trees
function Mood() {
	
	if (mood.mood >= 20) || mood.thoughtactive[mood_thoughts.catharsis] == 1 {
		exit
	}
	
	if first_break {
		//begin moodiness and choose duration
		mood.thoughtactive[mood_thoughts.mental_break] = 1
		moody_end = irandom_range(12, 24)
		moody_counter += 1
		first_break = false
	}
	
	if moody_counter >= moody_end {
		//end moodiness
		mood.thoughtactive[mood_thoughts.catharsis] = 1
		mood.mood = mood.mood_base
		moody_counter = 0
		first_break = true
	}
	
	sprite_index = spr_pawn_moody
	current_task = "Moody Tantrum"
}