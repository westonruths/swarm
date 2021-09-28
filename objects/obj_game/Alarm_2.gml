/// @description build menu
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

instance_create_layer(room_width/2,room_height - 100,"Menu",obj_start);
instance_create_layer(room_width/2,0,"Menu",obj_build_menu);
