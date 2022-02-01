/// @description Insert description here
// You can write your code in this editor
draw_self()

// Draw pawn
var x_offset = 50
var y_offset = 75
var xscale = 2
var yscale = 2
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)

// Draw status bars
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_set_halign(fa_right);

draw_text(x + 52, y+90, "Health:");
var ch = (pawn.hp / pawn.hp_max) * 100;
draw_healthbar(x+55,y+90, x+140, y+100, ch, c_black, c_red, c_red, 0, true, true)

draw_text(x + 52, y+105, "Food:");
var cf = (pawn.char_food / pawn.char_food_max) * 100;
draw_healthbar(x+55,y+105, x+140, y+115, cf, c_black, c_green, c_green, 0, true, true)

draw_text(x + 52, y+120, "Energy:");
var ce = (pawn.char_energy / pawn.char_energy_max) * 100;
draw_healthbar(x+55,y+120, x+140, y+130, ce, c_black, c_blue, c_blue, 0, true, true)

// Draw header text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_black);
draw_sprite_ext(spr_lt_box, image_index, x+5, y+2, global.view_width/3.2/9, 3, image_angle, image_blend, image_alpha)
draw_text(x + sprite_width / 2, y+7, pawn.name);
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);


// Draw task info
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_btn);
draw_text_transformed(global.view_width - 122, global.view_height/2, "Order of Work", 1, 1, 90);
draw_arrow(global.view_width - 107, global.build_y, global.view_width - 107, global.view_height - 5, 12)