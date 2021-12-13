// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_around_point(pointX, pointY){
	if place_free(pointX + global.grid_resolution, pointY) {
		targetX = pointX + global.grid_resolution
		targetY = pointY
	} else if place_free(pointX - global.grid_resolution, pointY) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX, pointY - global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX, pointY + global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX + global.grid_resolution, pointY + global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX + global.grid_resolution, pointY - global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX - global.grid_resolution, pointY + global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else if place_free(pointX - global.grid_resolution, pointY + global.grid_resolution) {
		targetX = pointX - global.grid_resolution
		targetY = pointY
	} else {
		print("target is inaccessible")
	}
}