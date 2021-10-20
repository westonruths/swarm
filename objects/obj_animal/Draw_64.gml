/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (animal_health / animal_health_max) * 100;
if (animal_health<animal_health_max) {
	draw_healthbar(x-15,y-10, x-35, y-15, pc, c_black, c_red, c_lime, 0, true, true)
}