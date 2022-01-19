/// @description Insert description here
// You can write your code in this editor
if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

draw_self()

var ch = (hp / hp_max) * 100;

if (hp<hp_max && hp > 0) {
	draw_healthbar(x-10,y+10, x+10, y+12, ch, c_black, c_red, c_red, 0, true, true)
}