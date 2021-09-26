/// @description Insert description here
// You can write your code in this editor
if (char_health <= 0) {
	instance_create_layer(x,y,"Instances",obj_gun_die)
	instance_destroy();
}