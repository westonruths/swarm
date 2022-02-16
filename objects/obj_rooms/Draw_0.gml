/// @description Insert description here
// You can write your code in this editor

for(var i=0;i<array_length(rooms);i++) {
	draw_set_alpha(0.8)
	for(var j=0;j<array_length(rooms[i]);j++) {
		var cell = rooms[i][j]
		draw_set_color(room_colors[i])
		draw_rectangle(cell.x - cell.sprite_width/2, cell.y - cell.sprite_height/2, 
						cell.x + cell.sprite_width/2, cell.y + cell.sprite_height/2, false)
	}

	draw_set_alpha(1)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_btn);
	draw_set_color(c_black);
	draw_text(rooms[i][0].x, rooms[i][0].y, "R" + string(i))
}

draw_set_alpha(1)