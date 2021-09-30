/// @description Insert description here
// You can write your code in this editor

with(obj_cell) {
	var dis = point_distance(x, y, other.x, other.y);
	
	print(dis);
   
	if (dis <= sprite_width/2) {
		alarm[0] = 1;
	}
}

instance_destroy();

