/// @description Insert description here
// You can write your code in this editor
if (dragging) {
	sprite_index = obj_sprite
	image_xscale = 1
	image_yscale = 1
	
	draw_text(x + 30, y, name);
	
	draw_self()
	exit
} else {
	sprite_index = spr_dt_box
	image_xscale = global.view_width/3.2/sprite_get_width(spr_lt_box)
	image_yscale = 5.5
}

draw_self();

draw_sprite_ext(obj_sprite, image_index, x+25, y + 25, 1, 1, 
				image_angle, image_blend, image_alpha)

draw_text(18 + x + 30, y+5, name);

draw_text(18 + x + 30, y + 25, string(build_cost.costs[0]) + " WOOD");
draw_text(18 + x + 110, y + 25, string(build_cost.costs[1]) + " STONE");