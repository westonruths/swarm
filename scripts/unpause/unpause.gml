// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function unpause(){
	global.building = false;
	global.menu_open = false;
	global.time_pause = false;
	
	with (obj_cell) { visible = false }
	
	with (obj_build_ui) {
		instance_destroy()
	}
	
	with (obj_close_construction) {
		instance_destroy()	
	}

}