/// @description Insert description here
// You can write your code in this editor

if (wood_cost <= 0) {
	build_obj = instance_create_layer(x,y,"Buildings",obj_building_type);
	instance_destroy();
}