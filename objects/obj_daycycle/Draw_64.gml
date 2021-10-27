var c = c_yellow;
//draw_text_color(10, 10, string(global.seconds), c,c,c,c, 1);
//draw_text_color(10, 30, string(global.minutes), c,c,c,c, 1);
//draw_text_color(10, 50, string(global.hours), c,c,c,c, 1);
//draw_text_color(10, 70, string(global.day), c,c,c,c, 1);
//draw_text_color(10, 90, string(global.season), c,c,c,c, 1);
//draw_text_color(10,110, string(global.year), c,c,c,c, 1);

draw_text_color(580,2, "Hour " + string(floor(global.hours))
					+ "   " + "Day " + string(global.day), c,c,c,c, 1);