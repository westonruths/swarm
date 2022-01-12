/// @description Insert description here
// You can write your code in this editor
switch(sprite_index){
	case spr_chop:
		with (pawn.fell_target) { alarm[0] = 1 }
		break;
	case spr_mine:
		with (pawn.mine_target) { alarm[0] = 1 }
		break;
	case spr_hammering:
		with (pawn.construct_target) { alarm[0] = 1 }
		break;
	case spr_cooking:
		with (pawn.cooking_target) { alarm[0] = 1 }
		break;
	case spr_digging:
		with (pawn.grow_target) { alarm[0] = 1 }
		break;
	case spr_dead:
		image_index = image_number-1
		break;
	case spr_eat:
		if instance_exists(pawn.eat_target) {
			with (pawn) {
				char_food += eat_target.nutrition	
			}
			instance_destroy(pawn.eat_target)
		}
		break;
	case spr_sleep:
		with (pawn) {
			char_energy += 1
		}
		break;
}