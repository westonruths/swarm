/// @description Hunger and Energy Deplete
// You can write your code in this editor

if (sprite_index != spr_pawn_eat) && (sprite_index != spr_pawn_sleep){
	char_food -= 5/20
}

if (char_food > 100) { char_food = 100 }

if (sprite_index != spr_pawn_sleep) {
	char_energy -= 5/20
}

if char_food <= 0 {
	char_food = 0
	mood.thoughtactive[mood_thoughts.starving] = 1
}

if char_energy <= 0 {
	char_energy = 0
	mood.thoughtactive[mood_thoughts.exhausted] = 1
} else {
	
}

if (mood.mood < 20) {
	moody_counter += 1/20
}