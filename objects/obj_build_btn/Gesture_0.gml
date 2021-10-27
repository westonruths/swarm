/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	exit;
}


if (global.building) {
	unpause();

	exit;
}

global.building = true;
global.menu_open = true;

//initialize build menu
instance_create_layer(global.build_x, global.build_y,"Menu_Objects",obj_build_stockpile);
instance_create_layer(global.build_x, global.build_y+50,"Menu_Objects",obj_build_wall);
instance_create_layer(room_width,0,"Menu",obj_close_building);
instance_create_layer(room_width-sprite_get_width(spr_build_menu),0,"Menu",obj_build_menu);