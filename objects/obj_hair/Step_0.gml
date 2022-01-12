/// @description Insert description here
// You can write your code in this editor

switch(pawn.sprite_index){
	case spr_pawn_carry:
		sprite_index = asset_get_index(hair_type + "carry")
		break;
	case spr_pawn_cooking:
		sprite_index = asset_get_index(hair_type + "cooking")
		break;
	case spr_pawn_chop:
		sprite_index = asset_get_index(hair_type + "chop")
		break;
	case spr_pawn_dead:
		sprite_index = asset_get_index(hair_type + "dead")
		break;
	case spr_pawn_hammering:
		sprite_index = asset_get_index(hair_type + "hammering")
		break;
	case spr_pawn_digging:
		sprite_index = asset_get_index(hair_type + "digging")
		break;
	case spr_pawn_mine:
		sprite_index = asset_get_index(hair_type + "mining")
		break;
	case spr_pawn_hurt:
		sprite_index = asset_get_index(hair_type + "hurt")
		break;
	case spr_pawn_idle:
		sprite_index = asset_get_index(hair_type + "idle")
		break;
	case spr_pawn_run:
		sprite_index = asset_get_index(hair_type + "run")
		break;
	case spr_pawn_walk:
		sprite_index = asset_get_index(hair_type + "walk")
		break;
}