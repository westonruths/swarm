/// @description build menu
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

instance_create_layer(global.rifle_build_x, global.rifle_build_y,"Menu_Objects",obj_build_rifle);
instance_create_layer(room_width,0,"Menu",obj_close_menu);
instance_create_layer(room_width-sprite_get_width(spr_build_menu),0,"Menu",obj_build_menu);