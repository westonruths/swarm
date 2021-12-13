/// @description Insert description here
// You can write your code in this editor
if (!global.building){
	exit
}

var x_goto = event_data[? "posX"]
var y_goto = event_data[? "posY"]

dragX = x_goto
dragY = y_goto

with(obj_cell){
	sprite_index = spr_cell;
		
	if collision_line(other.x, other.y, other.dragX, other.dragY, self, false, false) && build_obj == noone {
		sprite_index = spr_cell_selected;
	}
}