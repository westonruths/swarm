/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (num_stored > 0) {
	draw_sprite(spr_itemdisc_01, 0, x+10, y);
	draw_set_color(c_black)
	draw_text(x+5, y-3, string(num_stored));
}
