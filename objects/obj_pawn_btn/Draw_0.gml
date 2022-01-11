/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+20, y+40, 2, 2, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+20, y+40, 2, 2, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+20, y+40, 2, 2, image_angle, image_blend, image_alpha)
draw_text(x+50, y + 15, pawn.name)

var pc;
pc = (pawn.char_health / pawn.char_health_max) * 100;
draw_healthbar(x+25,y+60, x+75, y+70, pc, c_black, c_red, c_lime, 0, true, true)
