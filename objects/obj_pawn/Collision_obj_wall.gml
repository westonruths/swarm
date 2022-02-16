
//move_to_random_point()
//if !mp_grid_path(global.grid, path, x, y, targetX, targetY, true) {
//	x += sprite_width
//}

//if mp_grid_path(global.grid, path, x, y, targetX, targetY, false)  {
//	path_start(path, spd, path_action_stop, true)
//} else {
//	move_to_random_point()	
//}

if place_empty(x+global.grid_resolution) {
	x=x+1
} else if place_empty(x-global.grid_resolution) {
	x=x-1
}

if place_empty(y+global.grid_resolution) {
	y=y+1
} else if place_empty(y-global.grid_resolution) {
	y=y-1
}

//x = xprevious
//y = yprevious

