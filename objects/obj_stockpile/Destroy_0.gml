/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (num_stored > 1 && instance_exists(item)) {
	instance_create_layer(x+random_range(-10,10),y+random_range(-10,10),"Items", item.object_index)
}