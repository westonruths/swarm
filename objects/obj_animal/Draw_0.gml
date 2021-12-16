/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_alpha(0.7);
if (selected) {
	draw_sprite(spr_itemdisc_01, 0, x, y);
	draw_sprite(spr_sword_btn, 0, x, y);
}
draw_set_alpha(1);

var pc;
pc = (animal_health / animal_health_max) * 100;
if (animal_health<animal_health_max) {
	draw_healthbar(x-15,y-10, x-35, y-15, pc, c_black, c_red, c_lime, 0, true, true)
}

