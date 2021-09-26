/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	alarm[1] = random_range(0, 60)
}

if (char_health <= 0) {
	instance_create_layer(x,y,"Instances",obj_gun_die)
	instance_destroy();
}