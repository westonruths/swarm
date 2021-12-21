/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if build_counter < max_build_counter {
	draw_sprite(spr_soil, build_counter, x, y);
} else {
	draw_sprite(spr_soil, image_number-1, x, y);
	event_inherited();
	image_index = grow_counter
}




