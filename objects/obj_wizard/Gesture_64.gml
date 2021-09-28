/// @description Insert description here
// You can write your code in this editor
if (global.build_phase){
	exit;
}

var x_goto = event_data[? "posX"]
var y_goto = event_data[? "posY"]

if (y_goto >= global.bottom_game) {
	exit;
}

if (x_goto <= global.right_limit+15) {
	//exit;
}

instance_create_layer(x_goto, y_goto,"Instances",obj_mine);
sprite_index = spr_wizard_attack;

