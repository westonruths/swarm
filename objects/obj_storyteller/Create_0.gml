/// @description Insert description here
// You can write your code in this editor

enum story {
	raid,
	save_settler,
	game_over,
}

//counter_hrs[story.raid] = 1
counter_hrs[story.raid] = 48 + irandom_range(-2,2)
counter_hrs[story.save_settler] = counter_hrs[story.raid] + irandom_range(2,6)
counter_hrs[story.game_over] = 1


num_goblins = 0

