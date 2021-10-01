/// @description Insert description here
// You can write your code in this editor

var cell = instance_nearest(x, y, obj_cell)
if instance_exists(cell) {
	with(cell){
		var dis = point_distance(x, y, other.x, other.y);
	
		if (dis <= sprite_width) {
			alarm[0] = 1;
		}
	}
}

instance_destroy();

