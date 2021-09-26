/// @description Insert description here
// You can write your code in this editor

var x_goto = event_data[? "posX"]
var y_goto = event_data[? "posY"]

if (y_goto >= 640) {
	exit;
}

instance_create_layer(x_goto, y_goto,"Instances",obj_mine);
sprite_index = spr_wizard_attack;

