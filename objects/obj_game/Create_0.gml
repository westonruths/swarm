/// @description Insert description here
// You can write your code in this editor
global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, room_width div global.grid_resolution + 1, 
						room_height div global.grid_resolution + 1, global.grid_resolution, global.grid_resolution);

score = 0;
health = 100;
global.money = 30;
global.wood = 30;

win_score = 150;

draw_set_font(fnt_text);

global.top_game = global.grid_resolution;
global.bottom_game = room_height - global.grid_resolution/2;
global.left_limit = global.grid_resolution;
global.right_limit = global.left_limit + (10*global.grid_resolution)


global.building = false;
global.build_x = room_width - (3/4) * sprite_get_width(spr_build_menu);
global.build_y = 50;

global.menu_open = false;