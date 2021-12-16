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

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

if mp_grid_path(global.grid, path, x, y, targetX, targetY, true)  {
	path_start(path, spd, path_action_stop, true)
}


