/// @description Insert description here
// You can write your code in this editor

var cell = instance_nearest(x, y, obj_cell)
if instance_exists(cell) {
	with(cell){
		var dis = point_distance(x, y, other.x, other.y);
	
		if (dis <= sprite_width) {
			if (build_obj == noone && global.wood >= other.build_cost) {
				var xx = x;
				var yy = y;
				obj_build = instance_create_layer(xx,yy,"Instances",other.obj_building_type);
				global.money -= other.build_cost;
			}
		}
	}
}

instance_destroy();

