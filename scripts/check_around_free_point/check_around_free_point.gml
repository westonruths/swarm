// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_around_free_point(pointX, pointY){
	var _objects = [obj_wall, obj_mtn_wall, obj_tree]
	
	for (var i = 0; i < array_length(_objects); i++) {
		var _object = _objects[i]
		
		if place_empty(pointX + global.grid_resolution, pointY, _object) {
			return true
		} else if place_empty(pointX - global.grid_resolution, pointY, _object) {
			return true
		} else if place_empty(pointX, pointY - global.grid_resolution, _object) {
			return true
		} else if place_empty(pointX, pointY + global.grid_resolution, _object) {
			return true
		} else if place_empty(pointX + global.grid_resolution, pointY + global.grid_resolution, _object) {
			return true
		} else if place_empty(pointX + global.grid_resolution, pointY - global.grid_resolution, _object) {
			return true
		} else if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, _object) {
			return true
		} else if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, _object) {
			return true
		}
	}
	
	return false
	
	//mp_grid_clear_cell(global.grid, floor(pointX / global.grid_resolution), floor(pointY / global.grid_resolution));
	//var result = mp_grid_path(global.grid, test_path, x, y, pointX, pointY, false)
	//mp_grid_add_cell(global.grid, floor(pointX / global.grid_resolution), floor(pointY / global.grid_resolution));
	//return result
	
	//if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY - global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX + global.grid_resolution, pointY - global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else if mp_grid_path(global.grid, test_path, x, y, pointX - global.grid_resolution, pointY + global.grid_resolution, false) {
	//	return true
	//} else {
	//	return false
	//}
	//return true
	
}