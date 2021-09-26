/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_released(mb_left)) {
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_mine);
	sprite_index = spr_wizard_attack;
}