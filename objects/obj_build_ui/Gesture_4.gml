/// @description Insert description here
// You can write your code in this editor

var cell = instance_nearest(x, y, obj_cell)
var tmp_wood_cost = wood_cost
var tmp_obj_building_type = obj_building_type

if instance_exists(cell) {
	with(cell){
		var dis = point_distance(x, y, other.x, other.y);
	
		if (dis <= sprite_width) {
			if (build_obj == noone) {
				build_obj = instance_create_layer(x,y,"Buildings",obj_construction);
				with(build_obj) {
					wood_cost = tmp_wood_cost;
					obj_building_type = tmp_obj_building_type;	
				}
			}
		}
	}
}

instance_destroy();

