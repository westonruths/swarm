/// @description Insert description here
// You can write your code in this editor
var char = instance_place(x, y, obj_char);
var attack_damage = enemy_damage;

if (sprite_index == spr_eyeball_walk) {
	exit;
}

sprite_index = spr_eyeball_attack;

if (char == noone) {
	sprite_index = spr_eyeball_walk;
	speed = enemy_speed;
	attack = false;
}

if (sprite_index == spr_eyeball_attack) {
	sprite_index = spr_eyeball_charge;

	if (char != noone) {
		with(char){
			hp -= attack_damage;
		}
	}
} 



