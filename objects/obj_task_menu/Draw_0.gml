/// @description Insert description here
// You can write your code in this editor
draw_self()

// Draw pawn
var x_offset = 20
var y_offset = 75
var xscale = 2
var yscale = 2
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, xscale, yscale, image_angle, image_blend, image_alpha)

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_text);

draw_set_color(c_black);
draw_sprite_ext(spr_lt_box, image_index, x+5, y+2, global.view_width/3.2/9, 3, image_angle, image_blend, image_alpha)
draw_text(x + sprite_width / 2, y+7, pawn.name);
draw_set_color(c_white);

draw_set_halign(fa_left);
draw_set_valign(fa_top);