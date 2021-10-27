/// @description Insert description here
// You can write your code in this editor

if (global.time_pause) {
	path_speed = 0
	enemy_damage = 0;
	exit;
} 

if (direction > 90) && (direction < 270) image_xscale = 1; else image_xscale = -1;

var pawn = instance_nearest(x, y, obj_char)
if (instance_exists(pawn)) {
	// Move towards closest pawn
	targetX = pawn.x
	targetY = pawn.y
}
if place_meeting(x,y,obj_enemy) {
	targetX = irandom_range(x-100, x+100)
	targetY = irandom_range(y-100, y+100)
}

if place_meeting(x,y,obj_char) {
	//targetX = x
	//targetY = y
	path_speed = 0
} else {
	path_speed = enemy_speed
}