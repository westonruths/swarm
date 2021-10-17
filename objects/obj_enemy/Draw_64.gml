/// @description Insert description here
// You can write your code in this editor
var pc;
pc = (enemy_health / enemy_health_max) * 100;
if (enemy_health<enemy_health_max) {
	draw_healthbar(x+10,y-5, x+30, y-10, pc, c_black, c_red, c_lime, 0, true, true)
}