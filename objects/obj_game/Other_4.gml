/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){

	//if(audio_is_playing(msc_song)){
	//	audio_stop_sound(msc_song);
	//}
	
	//audio_play_sound(msc_song, 2, true);
	
	//setup map
	global.top_game = global.grid_resolution * 2;
	global.bottom_game = room_height - global.grid_resolution/2;
	global.left_limit = global.grid_resolution * 2;
	global.right_limit = room_width - global.grid_resolution/2;

	if global.start_new_game {
		make_new_game()
	} else {
		continue_game()
	}
	
	//render mountains
	with (obj_mtn_wall) {
		render_mtn_wall()
	}
}