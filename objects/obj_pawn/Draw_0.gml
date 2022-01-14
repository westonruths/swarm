/// @description Insert description here
// You can write your code in this editor
image_index = tool.image_index
draw_self();

var ch = (char_health / char_health_max) * 100;
var cf = (char_food / char_food_max) * 100;
var ce = (char_energy / char_energy_max) * 100;

if (char_health<char_health_max && char_health > 0) {
	draw_healthbar(x-10,y+10, x+10, y+12, ch, c_black, c_red, c_red, 0, true, true)
}

draw_healthbar(x-10,y+10, x+10, y+12, ch, c_black, c_red, c_red, 0, true, true)
draw_healthbar(x-10,y+13, x+10, y+15, cf, c_black, c_green, c_green, 0, true, true)
draw_healthbar(x-10,y+15, x+10, y+17, ce, c_black, c_blue, c_blue, 0, true, true)

//draw_text(x-10, y - 35, name)

if menu_open {
	draw_ellipse_colour(x-10, y+1, x+10, y+10, c_green, c_green, true);
}

//draw_ellipse_colour(targetX-5, targetY-3, targetX+5, targetY+5, c_red, c_red, false);
//if instance_exists(construct_target) {
//	draw_ellipse_colour(construct_target.x-5, construct_target.y-3, 
//		construct_target.x+5, construct_target.y+5, c_blue, c_blue, false);
//}
//if path_index != -1 {
//	draw_set_color(c_white)
//	draw_path(path, x, y, 1);
//}

with(tool){
	x = other.x;
	y = other.y;
}

with (hair) {
	x = other.x
	y = other.y
}