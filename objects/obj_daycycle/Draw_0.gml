/// @description Insert description here
// You can write your code in this editor
if(draw_daylight){
	var c = light_colour;
	draw_set_alpha(darkness);
	draw_rectangle_color(0,0, guiWidth, guiHeight, c,c,c,c, false);
	draw_set_alpha(1);
}

var c = c_yellow;
//draw_text_color(10, 10, string(global.seconds), c,c,c,c, 1);
//draw_text_color(10, 30, string(global.minutes), c,c,c,c, 1);
//draw_text_color(10, 50, string(global.hours), c,c,c,c, 1);
//draw_text_color(10, 70, string(global.day), c,c,c,c, 1);
//draw_text_color(10, 90, string(global.season), c,c,c,c, 1);
//draw_text_color(10,110, string(global.year), c,c,c,c, 1);

draw_text_color(580,2, "Hour " + string(floor(global.hours))
					+ "   " + "Day " + string(global.day), c,c,c,c, 1);