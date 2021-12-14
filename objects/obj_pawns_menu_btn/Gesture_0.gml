/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) {
	exit;
}


if (global.building) {
	exit;
}

global.menu_open = true;

//initialize build menu
var i = 0;
with(obj_pawn) {
	var pawn_btn = instance_create_layer(80 + i*69, global.view_height - 85,"Menu_Objects",obj_pawn_btn);
	with (pawn_btn) {
		pawn = other
		sprite_index = other.sprite_index
		pawn_selector = instance_create_layer(x, y, "Instances", obj_pawn_selector)
		with (pawn_selector) { pawn = other.pawn }
	}
	i++
}

instance_create_layer(global.view_width,global.view_height - 140,"Menu",obj_close_menu);
instance_create_layer(0,global.view_height,"Menu",obj_pawns_menu);