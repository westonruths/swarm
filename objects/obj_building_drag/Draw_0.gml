/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (global.building){
	draw_set_color(c_white)
	draw_circle(x, y, 5, false);
	draw_line(x, y, dragX, dragY);
}
