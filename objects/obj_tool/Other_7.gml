/// @description Insert description here
// You can write your code in this editor
switch(sprite_index){
	case spr_chop:
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
		   }
		}else{
		    //Unsuccessful attack
			//print(pawn.name, " misses!")
		}
		break;
	case spr_mine:
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
			if cooking_target.item_cooking == noone {
				cooking_target = noone
			}
		}
		break;
	case spr_digging:
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
}