/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_lt_box,0,x-10,y-20,12,15,image_angle,image_blend,image_alpha)

draw_self()

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_btn);
draw_set_color(c_black);
draw_text(x + sprite_width/2, y + sprite_height/2, "New Game");
