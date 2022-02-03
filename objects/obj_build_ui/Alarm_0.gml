/// @description Insert description here
// You can write your code in this editor
global.building = false
global.menu_open = false

//global.menu_open = false

//instance_create_layer(oldX, oldY,"Menu_Objects",obj_building_ui);

selected = true

instance_create_layer(global.view_width-200, global.view_height-50, "Menu_Objects", obj_confirm_build)
