/// @description Insert description here
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

if (score >= win_score) {
	//room_goto(rm_win);
	//audio_play_sound(snd_win, 1, false);
}

if (health <= 0){
	room_goto(rm_gameover);	
	audio_play_sound(snd_lose, 1, false);
}

if (global.hours == 1) {
	//Spawn enemies in the wee hours of the morning
	//spawn_enemies();
}