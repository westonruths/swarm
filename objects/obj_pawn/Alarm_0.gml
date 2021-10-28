/// @description update paths and tasks
if mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	path_start(path, spd, path_action_stop, true);
} else {
	move_to_random_point()
}

alarm[0] = irandom_range(1, room_speed*3)