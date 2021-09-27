/// @description Insert description here
// You can write your code in this editor
switch(sprite_index){
	case spr_mine_dig:
		sprite_index=spr_mine_beep;
		audio_play_sound(snd_explosion, 1, false);
		break;
		
	case spr_mine_explosion:
		instance_destroy();
		break;
}