/// @description Insert description here
// You can write your code in this editor
draw_self()

var x_offset = 13
var y_offset = 20
draw_sprite_ext(pawn.sprite_index, pawn.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.hair.sprite_index, pawn.hair.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(pawn.tool.sprite_index, pawn.tool.image_index, x+x_offset, y+y_offset, 1, 1, image_angle, image_blend, image_alpha)

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_text(x+25, y + 10, pawn.name)
draw_text(x+28, y + 30, pawn.current_task)

var ch = (pawn.hp / pawn.hp_max) * 100;
var cf = (pawn.char_food / pawn.char_food_max) * 100;
var ce = (pawn.char_energy / pawn.char_energy_max) * 100;
var cm = (pawn.mood.mood / pawn.mood.mood_max) * 100;

// Draw thoughts & mood modifiers
if cm >= 80 {
	draw_sprite_ext(happiness_01, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 50 {
	draw_sprite_ext(happiness_02, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else if cm >= 20 {
	draw_sprite_ext(happiness_03, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
} else {
	draw_sprite_ext(happiness_04, image_index, x+80, y+8, 2, 2, image_angle, image_blend, image_alpha)
}

//draw_text(x+110, y + 7, "H:")
//draw_text(x+110, y + 17, "F:")
//draw_text(x+110, y + 27, "E:")
//draw_text(x+110, y + 37, "M:")

draw_healthbar(x+110,y+10, global.view_width-25, y+15, ch, c_black, c_red, c_red, 0, true, true)
draw_healthbar(x+110,y+17, global.view_width-25, y+22, cf, c_black, c_green, c_green, 0, true, true)
draw_healthbar(x+110,y+24, global.view_width-25, y+29, ce, c_black, make_color_rgb(255,215,0), make_color_rgb(255,215,0), 0, true, true)
draw_healthbar(x+110,y+31, global.view_width-25, y+36, cm, c_black, c_blue, c_blue, 0, true, true)
