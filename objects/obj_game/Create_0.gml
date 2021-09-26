/// @description Insert description here
// You can write your code in this editor
score = 0;
health = 100;

global.bullet_damage = 10;

win_score = 100;

draw_set_font(fnt_text);

top_game = 64;
bottom_game = room_height - 64;

spawn_list = ds_list_create();
for (var i = top_game+32; i<bottom_game; i+=32) {
	ds_list_add(spawn_list, i);
}
