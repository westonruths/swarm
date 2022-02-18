/// @description Insert description here
// You can write your code in this editor

image_index = tool.image_index
if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

draw_self();

//var ch = (hp / hp_max) * 100;
//var cf = (char_food / char_food_max) * 100;
//var ce = (char_energy / char_energy_max) * 100;

//if (hp > 0) {
//	draw_healthbar(x-10,y+10, x+10, y+12, ch, c_black, c_red, c_red, 0, true, true)
//	draw_healthbar(x-10,y+13, x+10, y+15, cf, c_black, c_green, c_green, 0, true, true)
//	draw_healthbar(x-10,y+15, x+10, y+17, ce, c_black, c_blue, c_blue, 0, true, true)
//}


draw_set_halign(fa_left);
draw_set_valign(fa_middle);
if global.zoom_level > 1.1 {
	draw_set_font(fnt_big_btn);
} else {
	draw_set_font(fnt_btn);
}

draw_set_color(c_white);
draw_text(x, y +15, name)

// Draw thoughts & mood modifiers
var cm = (mood.mood / mood.mood_max) * 100;
if cm >= 80 {
	draw_sprite_ext(happiness_01, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
} else if cm >= 50 {
	draw_sprite_ext(happiness_02, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
} else if cm >= 20 {
	draw_sprite_ext(happiness_03, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
} else {
	draw_sprite_ext(happiness_04, image_index, x-9, y+11, 1, 1, image_angle, image_blend, image_alpha)
}

if menu_open {
	//draw_ellipse_colour(x-10, y+1, x+10, y+10, c_green, c_green, true);
	draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, x, y-5, 1, 1, image_angle, image_blend, image_alpha)
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