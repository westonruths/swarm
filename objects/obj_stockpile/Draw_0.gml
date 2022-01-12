/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (num_stored > 0) {
	draw_set_color(c_white)
	draw_set_font(fnt_btn)
	draw_text(x+3, y-3, string(num_stored));
}
