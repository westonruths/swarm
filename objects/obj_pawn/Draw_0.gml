/// @description Insert description here
// You can write your code in this editor
draw_self();

var pc;
pc = (char_health / char_health_max) * 100;
if (char_health<char_health_max) {
	draw_healthbar(x-15,y-10, x-35, y-15, pc, c_black, c_red, c_lime, 0, true, true)
}

//draw_text(x-10, y - 35, name)

if menu_open {
	draw_ellipse_colour(x-10, y+1, x+10, y+10, c_green, c_green, true);
	//draw_ellipse_colour(targetX-5, targetY+5, targetX+5, targetY+5, c_red, c_red, true);
}

if path_index != -1 {
	//draw_path(path, x, y, 1);
}