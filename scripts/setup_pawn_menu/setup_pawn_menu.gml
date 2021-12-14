// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_pawn_menu(){
	with(obj_task_cell) {
		visible = false
	}
	with(obj_pawn) { 
		menu_open = false;
	}

	global.menu_open = true;
	global.building = false;
	menu_open = true;

	//initialize build menu
	var listSize = array_length(task_cells);
	for(var i = 0; i < listSize; i++) {
		with(task_cells[i]) {
			visible = true
		}
	}

	instance_create_layer(global.view_width,global.view_height - 140,"Menu",obj_close_menu);
	var task_menu = instance_create_layer(0,global.view_height,"Menu",obj_task_menu);
	with (task_menu) {
		pawn = other
	}
}