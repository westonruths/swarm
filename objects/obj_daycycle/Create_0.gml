global.seconds = 80000;
global.minutes = 0;
global.hours = 0;

global.day = 1;
global.season = 1;
global.year = 1;

time_increment = room_speed/2;	//global.seconds per step
time_pause = false;

max_darkness = 0.7;
darkness = 0;
light_colour = c_black;
draw_daylight = true;

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();

enum phase {
	sunrise = 6,
	daytime = 8.5,
	sunset = 18,
	nighttime = 22,
}