/// @description Insert description here
// You can write your code in this editor
if (global.time_pause) {
	speed = 0;
	exit;
} 

if (animal_health <= 0) {
	instance_destroy();
}

move_to_random_point()

if mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	path_start(path, spd, path_action_stop, true);
	//print(name, targetX, targetY, path_index, path)
}

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;