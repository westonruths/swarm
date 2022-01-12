/// @description Insert description here
// You can write your code in this editor

// Draw task info
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_text_transformed(global.view_width - 122, global.view_height/2, "Order of Work", 1, 1, 90);
draw_arrow(global.view_width - 107, global.build_y, global.view_width - 107, global.view_height - 5, 12)