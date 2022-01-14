/// @description Hunger and Energy Deplete
// You can write your code in this editor

char_food -= 6

if (sprite_index != spr_pawn_sleep) {
	char_energy -= 5
}

if char_food <= 0 {
	char_food = 0
	char_health -= 1	
}

if char_energy <= 0 {
	char_energy = 0
	spd = 0.5
	work_spd = 0.5
} else {
	spd = 1
	work_spd = 1
}