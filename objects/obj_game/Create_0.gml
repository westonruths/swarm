/// @description Insert description here
// You can write your code in this editor
score = 0;
health = 100;
global.money = 30;

global.bullet_damage = 5;

win_score = 150;

draw_set_font(fnt_text);

global.top_game = 23;
global.bottom_game = room_height - 64;
global.left_limit = 30;
global.right_limit = global.left_limit + (7*44)

global.rifle_cost = 10;

global.building = false;
global.rifle_build_x = room_width - (3/4) * sprite_get_width(spr_build_menu);
global.rifle_build_y = 50;