/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	//audio_play_sound(msc_song, 2, true);
	
	//setup UI
	instance_create_layer(global.view_width/2-100, global.view_height - 57,
							"Menu_Objects",obj_build_btn)
	instance_create_layer(global.view_width/2+30, global.view_height - 57,
							"Menu_Objects",obj_pawns_menu_btn)
	
	//setup map
	global.top_game = global.grid_resolution * 2;
	global.bottom_game = room_height - global.grid_resolution/2;
	global.left_limit = global.grid_resolution * 2;
	global.right_limit = room_width - global.grid_resolution/2;

	obj_size = sprite_get_width(spr_cell);
	buffer = global.grid_resolution
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	//Identify mountain range
	mtn_list = []
	var num_mtns = irandom_range(1,5)
	for (var i = 0; i<num_mtns; i+=1) {
		var start_x = irandom_range(first_cell_x,global.right_limit)
		var start_y = irandom_range(first_cell_y,global.bottom_game)
		var end_x = start_x + irandom_range(5*buffer,20*buffer)
		var end_y = start_y + irandom_range(5*buffer,20*buffer)
		start_x = start_x - (start_x mod buffer) + obj_size/2
		start_y = start_y - (start_y mod buffer) + obj_size/2
		end_x = end_x - (end_x mod buffer) + obj_size/2
		end_y = end_y - (end_y mod buffer) + obj_size/2
		
		mtn_list[i] = [start_x, end_x, start_y, end_y]
	}
	
	
	//setup cells
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			var cell = instance_create_layer(j,i,"BuildUI",obj_cell);
			
			for (var m = 0; m<num_mtns; m+=1) {
				var start_x = mtn_list[m][0]
				var end_x = mtn_list[m][1]
				var start_y = mtn_list[m][2]
				var end_y = mtn_list[m][3]
				
				if j >= start_x && j <= end_x && i >= start_y && i <= end_y {
					with (cell) {
						build_obj = instance_create_layer(x,y,"Buildings",obj_mtn_wall);
					}	
				}
			}
			
			//place objects helper code
			var place_object = irandom_range(0,1000)

			//place trees
			if (place_object > 0 && place_object < 100) {
				with (cell) {
					if !instance_exists(build_obj) {
						build_obj = instance_create_layer(x,y,"Buildings",obj_tree);
					}
				}
			} 
			
			//place animals
			if (place_object > 100 && place_object < 110) {
				with (cell) {
					if !instance_exists(build_obj) {
						instance_create_layer(j, i, "Instances", obj_bull)
					}
				}
			}
		}
	}
}