/// @description Insert description here
// You can write your code in this editor
if (instance_exists(pawn)) {
	with (pawn) {
		setup_pawn_menu()
	}
}

with (obj_pawn_btn) {
	instance_destroy()
}

with (obj_pawns_menu) {
	instance_destroy()
}