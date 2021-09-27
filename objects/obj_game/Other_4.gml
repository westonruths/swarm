/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	
	if(audio_is_playing(msc_song)){
		audio_stop_sound(msc_song);
	}
	
	//audio_play_sound(msc_song, 2, true);
	
	//spawn_enemies
	alarm[0] = 60;
	
	//setup map
	obj_size = sprite_get_width(spr_cell);
	buffer = obj_size + 2;
	first_cell_y = global.top_game + obj_size/2;
	first_cell_x = global.left_limit + obj_size/2;
	
	spawn_list = ds_list_create();
	for (var i = first_cell_y; i<global.bottom_game; i+=buffer) {
		ds_list_add(spawn_list, i);
		for (var j = first_cell_x; j<global.right_limit; j+=buffer) {
			if(i==first_cell_y+buffer*3 && j==first_cell_x){
				instance_create_layer(j,i,"Instances",obj_wizard);
			} else {
				instance_create_layer(j,i,"Instances",obj_cell);
			}
		}
	}
}