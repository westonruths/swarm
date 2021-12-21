/// @description Insert description here
// You can write your code in this editor

if grow_counter >= max_grow_counter {
	grow_counter = 0
	build_counter = 0
	instance_create_layer(x, y-4, "Items", crop_drop)
}