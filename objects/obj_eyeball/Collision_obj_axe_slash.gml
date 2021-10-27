/// @description Insert description here
// You can write your code in this editor
with(other) {
	instance_destroy();
	other.enemy_health -= bullet_dmg;
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}

sprite_index = spr_eyeball_hurt;
audio_play_sound(snd_hit, 1, false);
