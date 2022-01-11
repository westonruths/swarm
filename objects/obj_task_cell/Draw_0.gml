/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_color(c_black);
draw_set_font(fnt_btn);
draw_text(x + 30, y+5, script_get_name(job));


if (enabled) {
	draw_sprite_ext(spr_confirm, image_index, x+sprite_width/2, y+sprite_height/2, 1.5, 1.5, image_angle, image_blend, image_alpha)
} 