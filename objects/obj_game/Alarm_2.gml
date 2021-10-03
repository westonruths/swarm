/// @description build menu
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

with(obj_build_btn) {
	var build_close = instance_create_layer(x,y,"Menu_Objects",obj_close_menu);
	build_close.visible = false;
}

instance_create_layer(global.build_x, global.build_y,"Menu_Objects",obj_build_house);
instance_create_layer(global.build_x, global.build_y+50,"Menu_Objects",obj_build_lumber_mill);
instance_create_layer(global.build_x, global.build_y+100,"Menu_Objects",obj_build_stockpile);
instance_create_layer(room_width,0,"Menu",obj_close_menu);
instance_create_layer(room_width-sprite_get_width(spr_build_menu),0,"Menu",obj_build_menu);
