/// @description Insert description here
// You can write your code in this editor
global.view_width = 812
global.view_height = 375
camera = view_camera[0]
drag_room_x = 0
drag_room_y = 0
pinching = false

//Debug
touch_x[0] = 0;
touch_y[0] = 0;
touch_x[1] = 0;
touch_y[1] = 0;
midpoint_x = 0;
midpoint_y = 0;

global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, room_width div global.grid_resolution + 1, 
						room_height div global.grid_resolution + 1, global.grid_resolution, global.grid_resolution);

score = 0;
health = 100;

win_score = 150;

draw_set_font(fnt_text);

global.building = false;
global.build_x = global.view_width - (3/4) * sprite_get_width(spr_build_menu);
global.build_y = 50;

global.menu_open = false;