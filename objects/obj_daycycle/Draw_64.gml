var c = c_white;
//draw_text_color(10, 10, string(global.seconds), c,c,c,c, 1);
//draw_text_color(10, 30, string(global.minutes), c,c,c,c, 1);
//draw_text_color(10, 50, string(global.hours), c,c,c,c, 1);
//draw_text_color(10, 70, string(global.day), c,c,c,c, 1);
//draw_text_color(10, 90, string(global.season), c,c,c,c, 1);
//draw_text_color(10,110, string(global.year), c,c,c,c, 1);

draw_set_font(fnt_text)
draw_set_valign(fa_bottom)
draw_text_color(50,global.view_height-10, "Hour " + string(floor(global.hours))
					+ "   " + "Day " + string(global.day), c,c,c,c, 1);