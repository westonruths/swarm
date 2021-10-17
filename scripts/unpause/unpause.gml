// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
	global.building = false;
	global.menu_open = false;

	with(obj_enemy){
		speed = original_speed;
		enemy_damage = original_enemy_damage;
	}
}