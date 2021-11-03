/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		//draw_text(20,2, "SCORE: " + string(score));
		break;
	
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "LORD REGENT",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Build a base and survive!

>> TAP TO START <<
"
		);
		draw_set_halign(fa_left);
		break;

	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width/2, 100, "YOU WON!",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 300,
			"TAP TO RESTART"
		);
		draw_set_halign(fa_left);	
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width/2, 100, "GAME OVER",
			3, 3, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250,
			"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width/2, 350,
			"TAP TO RESTART"
		);
		draw_set_halign(fa_left);	
		break;	
		break;
		
}