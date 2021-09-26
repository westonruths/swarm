/// @description Insert description here
// You can write your code in this editor
switch(sprite_index){
	case spr_mine_dig:
		sprite_index=spr_mine_beep;
		break;
		
	case spr_mine_explosion:
		instance_destroy();
		break;
}