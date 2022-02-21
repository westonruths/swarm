/// @description Insert description here
// You can write your code in this editor
switch(sprite_index){
	case spr_chop:
		var _snd = choose(snd_Chop_Wood_A, snd_Chop_Wood_C)
		if instance_exists(pawn.fell_target) {
			if pawn.fell_target.object_index != obj_tree {
				_snd = choose(snd_Gather_Herb_A, snd_Gather_Herb_B, snd_Gather_Herb_C)
			}
		} else {
			audio_stop_sound(_snd)
		}
		
		audio_sound_pitch(_snd, random_range(0.8, 1))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.plantcut].skill_level
			task_cells[jobid.plantcut].skill_exp += 5
		}
		with (pawn.fell_target) { 
			dmg = pawn_dmg
			alarm[0] = 1 
		}
		break;
	case spr_hunt:
		audio_sound_pitch(snd_blade_hit, choose(0.9,1.0,1.1))
		audio_play_sound_at(snd_blade_hit, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
	
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.hunt].skill_level
			task_cells[jobid.hunt].skill_exp += 5
		}
		with (pawn.hunt_target) { 
			dmg = pawn_dmg
			alarm[1] = 1 
		}
		break;
	case spr_defend:
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.defend].skill_level
			task_cells[jobid.defend].skill_exp += 5
		}
		
		var attackRoll = irandom_range(1, 100);
		if (attackRoll <= pawn_dmg*10){
		   //Successful attack
		   var damage = irandom_range(1, pawn_dmg*10);
		   //print(pawn.name, " lands a strike, dealing ", damage, " damage!")
		   with(pawn.defend_target) {
				hp -= damage
				audio_sound_pitch(snd_blade_hit, choose(0.9,1.0,1.1))
				audio_play_sound_at(snd_blade_hit, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		   }
		}else{
		    //Unsuccessful attack
			//print(pawn.name, " misses!")
			audio_play_sound_at(snd_blade_miss, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		}
		break;
	case spr_mine:
		var _snd = choose(snd_Mining_Rock_A, snd_Mining_Rock_B, snd_Mining_Rock_C)
		audio_stop_sound(_snd)
		audio_sound_pitch(_snd, random_range(0.8, 1.2))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.mine].skill_level
			task_cells[jobid.mine].skill_exp += 5
		}
		with (pawn.mine_target) { 
			dmg = pawn_dmg
			alarm[0] = 1 
		}
		break;
	case spr_hammering:
		var _snd = choose(snd_construct_1, snd_construct_2, snd_construct_3, snd_construct_4, snd_construct_5)
		audio_stop_sound(_snd)
		audio_sound_pitch(_snd, random_range(0.8, 1))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.construct].skill_level
			task_cells[jobid.construct].skill_exp += 5
		}
		with (pawn.construct_target) { 
			dmg = pawn_dmg
			alarm[0] = 1 
		}
		break;
	case spr_cooking:
		if !audio_is_playing(snd_cook) {
			audio_play_sound_at(snd_cook, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		}
	
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.cook].skill_level
			task_cells[jobid.cook].skill_exp += 5
		}
		with (pawn.cooking_target) { 
			dmg = pawn_dmg
			alarm[0] = 1 
		}
		with (pawn) {
			if !instance_exists(cooking_target.item_cooking) {
				cooking_target = noone
			}
		}
		break;
	case spr_digging:
		var _snd = choose(snd_dig1, snd_dig2, snd_dig3)
		audio_stop_sound(_snd)
		audio_sound_pitch(_snd, random_range(0.8, 1))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.grow].skill_level
			task_cells[jobid.grow].skill_exp += 5
		}
		with (pawn.grow_target) { 
			dmg = pawn_dmg
			alarm[0] = 1 
		}
		break;
	case spr_dead:
		image_index = image_number-1
		break;
	case spr_eat:
		with (pawn.eat_target) {
			alarm[0] = 1 
			other.pawn.char_food += nutrition
		}
		break;
	case spr_sleep:
		with (pawn) {
			char_energy += 5
		}
		break;
	case spr_patient:
		with (pawn) {
			char_energy += 1
			hp += heal_rate
		}
		break;
	case spr_doctor:
		_snd = choose(snd_Gather_Herb_A, snd_Gather_Herb_B, snd_Gather_Herb_C)
		audio_stop_sound(_snd)
		audio_sound_pitch(_snd, random_range(0.6, 0.8))
		audio_play_sound_at(_snd, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		
		var pawn_dmg = 0
		with (pawn) {
			pawn_dmg = task_cells[jobid.doctor].skill_level
			task_cells[jobid.doctor].skill_exp += 5
		}
		with (pawn.doctor_target) { 
			var _herb = instance_place(x, y, obj_healing_herb)
			if instance_exists(_herb) {
				hp += _herb.heal_pwr
			}
			
			with (_herb) {
				dmg = 1
				alarm[0] = 1 
			}
		}
		break;
	case spr_walk:
	case spr_run:
	case spr_carry:
		var _walk_sound = choose(snd_walk_A,snd_walk_B,snd_walk_C,snd_walk_D, snd_walk_E,snd_walk_F,snd_walk_G,snd_walk_H,snd_walk_I,snd_walk_J)
		audio_play_sound_at(_walk_sound, x, y, 0, global.falloff_ref, global.falloff_max, global.falloff_factor, false, 5);
		break;
}