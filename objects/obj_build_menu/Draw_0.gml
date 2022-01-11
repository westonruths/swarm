/// @description Insert description here
// You can write your code in this editor
draw_self()

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_black);
draw_text(x + sprite_width / 2, y, "BUILD");
draw_line(x, y + 20, x + (global.view_width/3/sprite_width), y+20)
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);