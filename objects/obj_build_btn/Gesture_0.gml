/// @description Insert description here
// You can write your code in this editor
if (global.menu_open && global.building) {
	unpause();
	exit;
} else {
	unpause()
}

global.building = true;
global.menu_open = true;

//initialize build menu
instance_create_layer(global.build_x, global.build_y,"Menu_Objects",obj_build_stockpile);
instance_create_layer(global.build_x, global.build_y+50,"Menu_Objects",obj_build_wall);
instance_create_layer(global.build_x, global.build_y+100,"Menu_Objects",obj_build_door);
instance_create_layer(global.build_x, global.build_y+150,"Menu_Objects",obj_build_stove);
instance_create_layer(global.build_x, global.build_y+200,"Menu_Objects",obj_build_bed);
instance_create_layer(global.build_x, global.build_y+250,"Menu_Objects",obj_build_wheat);
instance_create_layer(global.view_width-30,15,"Menu",obj_close_building);
instance_create_layer(global.view_width-(global.view_width/3),0,"Menu",obj_build_menu);
