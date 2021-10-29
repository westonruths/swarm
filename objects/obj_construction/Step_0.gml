/// @description Insert description here
// You can write your code in this editor

if obj_building_type < 0 {
	instance_destroy()
}

if (wood_cost <= 0) {
	var new_build_obj = instance_create_layer(x,y,"Buildings",obj_building_type);
	
	var cell = instance_nearest(x, y, obj_cell)
	with(cell){
		build_obj = new_build_obj
	}
	
	with(new_build_obj) {
		original_wood_cost = other.original_wood_cost
		wood_cost = other.original_wood_cost	
	}
	
	instance_destroy();
}