/// @description Insert description here
// You can write your code in this editor
global.grid_resolution = 32
global.grid = mp_grid_create(0, 0, room_width div global.grid_resolution, 
						room_height div global.grid_resolution, global.grid_resolution, global.grid_resolution);

score = 0;
health = 100;
global.money = 30;
global.wood = 30;

win_score = 150;

draw_set_font(fnt_text);

global.top_game = 23;
global.bottom_game = room_height - 64;
global.left_limit = 30;
global.right_limit = global.left_limit + (7*44)


global.building = false;
//global.build_x = room_width - (3/4) * sprite_get_width(spr_build_menu);
//global.build_y = 50;
global.build_x = 32;
global.build_y = 32;

global.menu_open = false;