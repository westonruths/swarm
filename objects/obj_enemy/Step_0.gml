/// @description Insert description here
// You can write your code in this editor

if (global.time_pause) {
	speed = 0;
	enemy_damage = 0;
	exit;
} else {
	speed = original_speed;
	enemy_damage = original_enemy_damage;
}

direction = 180;

var pawn = instance_nearest(x, y, obj_char)
if (instance_exists(pawn)) {
	// Move towards closest pawn
	if (distance_to_point(pawn.x,pawn.y) < 150) {
		move_towards_point(pawn.x, pawn.y, enemy_speed)
	}
}
if place_meeting(x,y,obj_enemy) {
    with instance_place(x,y,obj_enemy) {
        move_towards_point(other.x,other.y,-enemy_speed); //-towards = away
    }
}
if place_meeting(x,y,obj_char) {
    with instance_place(x,y,obj_char) {
        move_towards_point(other.x,other.y,-spd); //-towards = away
    }
	move_towards_point(x,y,-enemy_speed); //-towards = away
}