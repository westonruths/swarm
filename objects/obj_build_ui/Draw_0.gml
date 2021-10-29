/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_text(sprite_width/2 + x + 5, y-21, name);

draw_text(sprite_width/2 + x + 5, y-4, string(build_cost.costs[0]) + " WOOD");
draw_text(sprite_width/2 + x + 80, y-4, string(build_cost.costs[1]) + " STONE");