/// @description Insert description here
// You can write your code in this editor
draw_self()

var x_offset = 10
var y_offset = 20
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_set_font(fnt_btn);
draw_text(x+25, y + 8, pawn.name)

//var ch = (pawn.hp / pawn.hp_max) * 100;
//var cf = (pawn.char_food / pawn.char_food_max) * 100;
//var ce = (pawn.char_energy / pawn.char_energy_max) * 100;

//draw_healthbar(x+120,y+10, global.view_width-25, y+15, ch, c_black, c_red, c_red, 0, true, true)
//draw_healthbar(x+120,y+17, global.view_width-25, y+22, cf, c_black, c_green, c_green, 0, true, true)
//draw_healthbar(x+120,y+24, global.view_width-25, y+29, ce, c_black, c_blue, c_blue, 0, true, true)

//var pc = (pawn.hp / pawn.hp_max) * 100;
//draw_healthbar(x+25,y+60, x+75, y+70, pc, c_black, c_red, c_lime, 0, true, true)
