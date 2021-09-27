/// @description Insert description here
// You can write your code in this editor
health -= damage;

repeat(20){
	instance_create_layer(x,y,"Instances",obj_debri)
}

audio_play_sound(snd_lose, 1, false);