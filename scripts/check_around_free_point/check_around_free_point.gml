// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_around_free_point(pointX, pointY){
	//if place_free(pointX + global.grid_resolution, pointY) {

	//} else if place_free(pointX - global.grid_resolution, pointY) {

	//} else if place_free(pointX, pointY - global.grid_resolution) {

	//} else if place_free(pointX, pointY + global.grid_resolution) {

	//} else if place_free(pointX + global.grid_resolution, pointY + global.grid_resolution) {

	//} else if place_free(pointX + global.grid_resolution, pointY - global.grid_resolution) {

	//} else if place_free(pointX - global.grid_resolution, pointY + global.grid_resolution) {

	//} else if place_free(pointX - global.grid_resolution, pointY + global.grid_resolution) {

	//} else {
	//	return false
	//}
	//return true
	
	if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY - global.grid_resolution, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY + global.grid_resolution, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY + global.grid_resolution, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY - global.grid_resolution, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {

	} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {

	} else {
		return false
	}
	return true
	
}