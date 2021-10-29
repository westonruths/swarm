/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (wood_cost > 0 && !global.building) {
	draw_text(x-5, y-5, string(wood_cost));
}