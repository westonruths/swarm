/// @description Insert description here
// You can write your code in this editor
var menu_open = global.menu_open
if global.menu_open { 
	if instance_exists(obj_close_info) {
		menu_open = false
	}
}

if !instance_exists(selection) || menu_open {exit}

with (obj_ui_interface) {
	selected = false
}

global.menu_open = true

instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_info);

//var action_btn = instance_create_layer(x+10,y+70,"Menu_Btns",obj_info_action);
//with (action_btn) {
//	text = other.selection.action_text
//}