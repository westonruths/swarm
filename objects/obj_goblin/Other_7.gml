/// @description Insert description here
// You can write your code in this editor

if sprite_index == spr_goblin_dead { 
	image_index = image_number-1
	exit 
}

if sprite_index == spr_goblin_run {
	var _walk_sound = choose(snd_walk_A,snd_walk_B,snd_walk_C,snd_walk_D, snd_walk_E,snd_walk_F,snd_walk_G,snd_walk_H,snd_walk_I,snd_walk_J)
	audio_sound_pitch(_walk_sound, random_range(0.6, 0.8))
	audio_play_sound_at(_walk_sound, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
}

if sprite_index != spr_goblin_attack { exit }

var attackRoll = irandom_range(1, 100);

if (attackRoll <= accuracy){
   //Successful attack
   var damage = irandom_range(1, strength);
   //print("Goblin lands a strike, dealing ", damage, " damage!")
   with(hunt_target) {
		hp -= damage
		var _snd = choose(snd_blade_hit, snd_Cloth_Armor_Hit_A, snd_Cloth_Armor_Hit_B)
		audio_sound_pitch(_snd, choose(0.9,1.0,1.1))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
   }
}else{
    //Unsuccessful attack
	var _snd = choose(snd_blade_miss, snd_Cloth_Armor_Hit_A, snd_Cloth_Armor_Hit_B)
	audio_sound_pitch(_snd, choose(0.9,1.0,1.1))
	audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
}

