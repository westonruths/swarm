/// @description Insert description here
// You can write your code in this editor
if (!global.building){
	exit
}

with(obj_cell){
	if collision_line(other.x, other.y, other.dragX, other.dragY, self, false, false) && !instance_exists(build_obj) {
		build_obj = instance_create_layer(x,y,"Buildings", obj_construction);
		
		var o_original_wood_cost = other.original_wood_cost
		var o_wood_cost = other.wood_cost
		var o_index = other.obj_building_type
		
		with (build_obj) {
			original_wood_cost = o_original_wood_cost
			wood_cost = o_wood_cost
			obj_building_type = o_index
		}
	}
}

dragX = x
dragY = y
