/// @description Insert description here
// You can write your code in this editor

if selected || global.menu_open {exit}
	
with (obj_ui_interface) {
	selected = false
}

global.menu_open = true

selected = true

sprite_index = spr_lt_box
image_xscale = global.view_width/3.1/sprite_get_width(spr_lt_box)
image_yscale = 13

x = global.build_x
y = global.view_height - sprite_height * 1

instance_create_layer(global.view_width-25,y+15,"Menu_Btns",obj_close_task);

instance_create_layer(x+50,y+70,"Menu_Btns",obj_taskremove_btn);
instance_create_layer(x+120,y+70,"Menu_Btns",obj_taskcamera_btn);

with (obj_taskremove_btn) { toggle_on = true }
with(obj_taskcamera_btn) { toggle_on = false }