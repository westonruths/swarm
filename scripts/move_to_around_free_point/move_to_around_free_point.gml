// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_around_free_point(pointX, pointY){
	var max_distance = 9999
	var dist = max_distance - 1
	
	var _objects = [obj_wall, obj_mtn_wall, obj_tree]
	
	for (var i = 0; i < array_length(_objects); i++) {
		var _object = _objects[i]
		
		if place_empty(pointX - global.grid_resolution, pointY, _object) || place_empty(pointX + global.grid_resolution, pointY, _object) {
			dist = distance_to_point(pointX - global.grid_resolution, pointY)
			if place_empty(pointX - global.grid_resolution, pointY, _object) && (dist < max_distance) {
				targetX = pointX - global.grid_resolution
				targetY = pointY
				max_distance = dist
			}
	
			dist = distance_to_point(pointX + global.grid_resolution, pointY)
			if place_empty(pointX + global.grid_resolution, pointY, _object) && (dist < max_distance) {
				targetX = pointX + global.grid_resolution
				targetY = pointY
				max_distance = dist
			}
		} else {
			dist = distance_to_point(pointX, pointY - global.grid_resolution)
			if place_empty(pointX, pointY - global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX
				targetY = pointY - global.grid_resolution
				max_distance = dist
			} 
	
			dist = distance_to_point(pointX, pointY + global.grid_resolution)
			if place_empty(pointX, pointY + global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX
				targetY = pointY + global.grid_resolution
				max_distance = dist
			} 
	
			dist = distance_to_point(pointX + global.grid_resolution, pointY + global.grid_resolution)
			if place_empty(pointX + global.grid_resolution, pointY + global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX + global.grid_resolution
				targetY = pointY + global.grid_resolution
				max_distance = dist
			} 
	
			dist = distance_to_point(pointX + global.grid_resolution, pointY - global.grid_resolution)
			if place_empty(pointX + global.grid_resolution, pointY - global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX + global.grid_resolution
				targetY = pointY - global.grid_resolution
				max_distance = dist
			} 
	
			dist = distance_to_point(pointX - global.grid_resolution, pointY + global.grid_resolution)
			if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX - global.grid_resolution
				targetY = pointY + global.grid_resolution
				max_distance = dist
			} 
	
			dist = distance_to_point(pointX - global.grid_resolution, pointY + global.grid_resolution)
			if place_empty(pointX - global.grid_resolution, pointY + global.grid_resolution, _object) && (dist < max_distance) {
				targetX = pointX - global.grid_resolution
				targetY = pointY + global.grid_resolution
				max_distance = dist
			} 
		}
	}
	
	return true
}