/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	//audio_play_sound(msc_song, 2, true);
	
	//setup UI
	instance_create_layer(global.view_width-sprite_get_width(spr_pawns_menu_btn), 
							global.view_height-sprite_get_height(spr_pawns_menu_btn) - 10,
							"Menu_Objects",obj_pawns_menu_btn);
	instance_create_layer(global.view_width-sprite_get_width(spr_build), 
							global.view_height-20-sprite_get_height(spr_build)-sprite_get_height(spr_pawns_menu_btn),
							"Menu_Objects",obj_build_btn);
	
	//setup map
	global.top_game = global.grid_resolution * 2;
	global.bottom_game = room_height - global.grid_resolution/2;
	global.left_limit = global.grid_resolution * 2;
	global.right_limit = room_width - global.grid_resolution/2;

	obj_size = sprite_get_width(spr_cell);
	buffer = global.grid_resolution
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	//setup cells
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			cell = instance_create_layer(j,i,"BuildUI",obj_cell);
			
			//place objects
			var place_object = irandom_range(0,100)
			if !place_empty(j, i) {
				print(j, i, " is not empty")
				place_object = -1
			}
			
			// place trees
			if (place_object > 0 && place_object < 20) {
				with (cell) {
					build_obj = instance_create_layer(x,y,"Buildings",obj_tree);
				}
			} 
			
			// place animals
			if (place_object > 20 && place_object < 24) {
				instance_create_layer(j, i, "Instances", obj_bull)
			}
		}
	}
}