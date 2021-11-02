/// @description Insert description here
// You can write your code in this editor
move_to_random_point()
if !mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
	x += sprite_width
}