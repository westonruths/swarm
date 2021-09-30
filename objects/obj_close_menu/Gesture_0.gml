/// @description Insert description here
// You can write your code in this editor
global.building = false;

with(obj_game){
	alarm[0] = 60
}

with(obj_enemy){
	speed = original_speed;
	enemy_damage = original_enemy_damage;
}

instance_destroy();