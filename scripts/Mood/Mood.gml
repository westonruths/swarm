// Logic to cut down trees
function Mood() {
	
	if (mood.mood >= 20) || mood.thoughtactive[mood_thoughts.catharsis] == 1 {
		exit
	}
	
	print(name, moody_counter)
	if first_break {
		print(name, "begin moodiness")
		//begin moodiness and choose duration
		mood.thoughtactive[mood_thoughts.mental_break] = 1
		moody_end = irandom_range(12, 24)
		move_to_random_point()
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
	
	sprite_index = spr_pawn_walk
	current_task = "Moody Sulking"
	
	
	if path_index == 1 {
		sprite_index = spr_pawn_idle
		targetX = x
		targetY = y
	}
}