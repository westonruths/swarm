/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor

with (obj_task_menu) {
	instance_destroy()
}

with (obj_task_cell) {
	visible = false
}

global.menu_open = true;

//initialize build menu
var i = 0;
with(obj_pawn) {
	var pawn_btn = instance_create_layer(global.build_x, global.build_y + i*50,"Menu_Objects",obj_pawn_btn);
	with (pawn_btn) {
		pawn = other
	}
	i++
}

instance_create_layer(global.view_width-30,15,"Menu",obj_close_menu);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu",obj_pawns_menu);

instance_destroy(self)
