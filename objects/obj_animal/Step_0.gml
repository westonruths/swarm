/// @description Insert description here
// You can write your code in this editor
if (global.time_pause) {
	path_speed = 0;
	exit;
} 

if (animal_health <= 0) {
	instance_destroy();
	instance_create_layer(x,y,"Items",obj_meat)
}

move_to_random_point()

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;