/// @description Insert description here
// You can write your code in this editor

var x_goto = event_data[? "posX"]
var y_goto = event_data[? "posY"]

x = x_goto
y = y_goto

var cell = instance_nearest(x, y, obj_cell)
if instance_exists(cell) {
	with(obj_cell){
		sprite_index = spr_cell;
	}
	
	with(cell){
		var dis = point_distance(x, y, other.x, other.y);
		if (dis <= sprite_width) {
			sprite_index = spr_cell_selected;
		}
	}
}