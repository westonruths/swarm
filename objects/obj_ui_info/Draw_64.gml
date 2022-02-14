/// @description Insert description here
// You can write your code in this editor
if instance_exists(selection) && instance_exists (obj_close_info) {	
	// draw ui
	draw_self();

	draw_sprite_ext(selection.sprite_index, image_index, x+25, y + 25, 1, 1, image_angle, image_blend, image_alpha)

	draw_set_font(fnt_text)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	draw_set_color(c_black);
	draw_text(x + 48, y+5, selection.title);
	
	draw_set_font(fnt_btn)
	draw_text_ext(x+48, y+30, selection.detail, 12, sprite_width-50);
	
	if selection.object_index == obj_construction {
		draw_text(x + 48, y+48, "Resources Required:");
		
		var resource_x = 55
		var resource_y = 70
		draw_set_valign(fa_middle)
		draw_set_halign(fa_left)
		if selection.build_cost.original_costs[0] > 0 {
		
			draw_sprite_ext(spr_wood, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
			draw_text(x + resource_x + 8, y + resource_y, string(selection.build_cost.original_costs[0]-selection.build_cost.costs[0]) + "/" + string(selection.build_cost.original_costs[0]));
			resource_x += 50
		}

		if selection.build_cost.original_costs[1] > 0 {
			draw_sprite_ext(spr_stone, image_index, x+resource_x, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
			draw_text(x + resource_x + 8, y + resource_y, string(selection.build_cost.original_costs[1]-selection.build_cost.costs[1]) + "/" + string(selection.build_cost.original_costs[1]));
			resource_x += 50
		}

		if resource_x == 55 {
			draw_text(x + 48, y + resource_y, "All materials present");
		}	
	}
}