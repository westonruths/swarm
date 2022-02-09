/// @description Insert description here
// You can write your code in this editor
draw_self()

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(x + sprite_width / 2, y+7, text);
	
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_white);
draw_text(x + 10, y+35, "Available Tech Points: ");
for (var p=0; p<global.tech_points; p++) {
	draw_sprite_ext(spr_tech_point, image_index, x+10+p*5, y + 35, 1, 1, image_angle, image_blend, image_alpha)
}

draw_set_color(c_black);
draw_line(x+2, y+45, x+sprite_width-5, y+45)

draw_set_halign(fa_left);
draw_set_valign(fa_top);