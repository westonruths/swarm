/// @description Insert description here
// You can write your code in this editor

event_inherited()

if grow_counter >= max_grow_counter {
	grow_counter = 0
	build_counter = 0
	instance_create_layer(x, y, "Buildings", crop_drop)
}