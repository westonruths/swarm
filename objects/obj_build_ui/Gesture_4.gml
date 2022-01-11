/// @description Insert description here
// You can write your code in this editor

var cell = instance_nearest(x, y, obj_cell)
var tmp_build_cost = build_cost.new_cost()
var tmp_obj_building_type = obj_building_type

if place_meeting(x, y, obj_build_menu) {
	instance_destroy();
	exit
}

if instance_exists(cell) {
	with(cell){
		var dis = point_distance(x, y, other.x, other.y);
	
		if (dis <= sprite_width) {
			if !instance_exists(build_obj) {
				build_obj = instance_create_layer(x,y,"Buildings",obj_construction);

				with(build_obj) {
					build_cost = tmp_build_cost
					obj_building_type = tmp_obj_building_type;	
				}
			}
		}
	}
}

instance_destroy();

dragging = false