/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	//audio_play_sound(msc_song, 2, true);
	
	//setup UI
	instance_create_layer(global.view_width/2-sprite_get_width(spr_pawns_menu_btn), 
							global.view_height-sprite_get_height(spr_pawns_menu_btn),
							"Menu_Objects",obj_pawns_menu_btn);
	instance_create_layer(global.view_width/2+sprite_get_width(spr_build), 
							global.view_height-sprite_get_height(spr_build),
							"Menu_Objects",obj_build_btn);
	
	//setup map
	obj_size = sprite_get_width(spr_cell);
	buffer = global.grid_resolution
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	//setup cells
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			instance_create_layer(j,i,"BuildUI",obj_cell);
		}
	}
}