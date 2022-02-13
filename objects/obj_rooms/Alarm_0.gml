/// @description Insert description here
// You can write your code in this editor


var left_diag = mp_grid_path(global.enemy_grid, path, wall_x-global.grid_resolution, wall_y-global.grid_resolution,
				wall_x+global.grid_resolution, wall_y+global.grid_resolution, false)

var right_diag = mp_grid_path(global.enemy_grid, path, wall_x+global.grid_resolution, wall_y-global.grid_resolution,
				wall_x-global.grid_resolution, wall_y+global.grid_resolution, false)

var up_down = mp_grid_path(global.enemy_grid, path, wall_x, wall_y-global.grid_resolution,
				wall_x, wall_y+global.grid_resolution, false)
				
var left_right = mp_grid_path(global.enemy_grid, path, wall_x+global.grid_resolution, wall_y,
				wall_x-global.grid_resolution, wall_y, false)
				
if !left_diag and !right_diag and !up_down and !left_right {
	//no path to this point so therefore it's a room
}