/// @description Insert description here
// You can write your code in this editor

if mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	path_start(path, enemy_speed, path_action_stop, true);
}

alarm[0] = irandom_range(0, room_speed*3)