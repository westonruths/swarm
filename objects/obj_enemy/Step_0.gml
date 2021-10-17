/// @description Insert description here
// You can write your code in this editor

if (global.building || global.menu_open) {
	speed = 0;
	enemy_damage = 0;
} 

var pawn = instance_nearest(x, y, obj_char)
if (instance_exists(pawn)) {
	// Move towards closest pawn
	if (distance_to_point(pawn.x,pawn.y) < 150) {
		move_towards_point(pawn.x, pawn.y, enemy_speed)
	}
} else {
	direction = 180;
}