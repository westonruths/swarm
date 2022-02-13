/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if build_counter < max_build_counter {
	draw_sprite(spr_soil, build_counter, x, y);
	
	var ch = (build_counter / max_build_counter) * 100;

	if (build_counter > 0) {
		draw_healthbar(x-10,y+5, x+10, y+10, ch, c_black, c_lime, c_lime, 0, true, true)
	}
} else {
	draw_sprite(spr_soil, image_number-1, x, y+1*image_index);
	event_inherited();
	image_index = grow_counter
}




