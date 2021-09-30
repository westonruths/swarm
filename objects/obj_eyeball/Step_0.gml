/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (enemy_health <= 0) {
	instance_create_layer(x,y,"Instances",obj_eyeball_die)
	audio_play_sound(snd_eyeball_die, 1, false);
	instance_destroy();
}