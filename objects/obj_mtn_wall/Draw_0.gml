/// @description Insert description here
// You can write your code in this editor
render_mtn_wall()
draw_self()

draw_set_alpha(0.7);
if (selected) {
	draw_sprite(spr_itemdisc_01, 0, x, y);
	draw_sprite(spr_pickaxe_btn, 0, x, y);
}
draw_set_alpha(1);