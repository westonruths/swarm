/// @description Insert description here
// You can write your code in this editor
if (global.menu_open) || room != rm_game {
	exit;
}

drag_room_x = event_data[? "posX"]
drag_room_y = event_data[? "posY"]