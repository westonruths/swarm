/// @description Insert description here
// You can write your code in this editor

for(var i=0;i<array_length(rooms);i++) {
	draw_set_alpha(0.2)
	var room_name = "Room"
	
	var label_cell = rooms[i][0]
	
	for(var j=0;j<array_length(rooms[i]);j++) {
		var cell = rooms[i][j]
		draw_set_color(room_colors[i])
		draw_rectangle(cell.x - cell.sprite_width/2, cell.y - cell.sprite_height/2, 
						cell.x + cell.sprite_width/2, cell.y + cell.sprite_height/2, false)
		
		if (cell.x <= label_cell.x && cell.y <= label_cell.y) {
			label_cell = cell	
		}
						
		if instance_exists(cell.build_obj) {
			if cell.build_obj.object_index == obj_bed {
				room_name = "Bedroom"	
			} else if cell.build_obj.object_index == obj_stove {
				room_name = "Kitchen"
			}
		}
	}

	draw_set_alpha(1)
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if global.zoom_level > 1.1 {
		draw_set_font(fnt_big_btn);
	} else {
		draw_set_font(fnt_btn);
	}
	draw_set_color(c_white);
	draw_text(label_cell.x-10, label_cell.y-10, room_name)
}

draw_set_alpha(1)