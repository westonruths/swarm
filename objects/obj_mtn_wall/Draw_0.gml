/// @description Insert description here
// You can write your code in this editor
//render_mtn_wall()
draw_self()

if (selected) {
	draw_set_alpha(0.7);
	draw_sprite(spr_itemdisc_01, 0, x, y);
	draw_sprite(spr_pickaxe_btn, 0, x, y);
	draw_set_alpha(1);
}

if (tmp_selected) {
	draw_sprite_ext(selectbox_top, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
	draw_sprite_ext(selectbox_bottom, image_index, x, y, 1, 1, image_angle, image_blend, image_alpha)
}

