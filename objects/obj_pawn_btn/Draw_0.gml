/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_text(x-20, y + 10, pawn.name)

var pc;
pc = (pawn.char_health / pawn.char_health_max) * 100;
draw_healthbar(x-20,y+30, x+20, y+40, pc, c_black, c_red, c_lime, 0, true, true)

draw_set_color(c_white)
draw_rectangle(x-20, y-15, x+20, y+10, true);
