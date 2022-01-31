/// @description Insert description here
// You can write your code in this editor
exit

if (global.menu_open) || pinching {
	exit;
}

var _x = drag_room_x - event_data[? "guiposX"]
var _y = drag_room_y - event_data[? "guiposY"]

xTo = _x
yTo = _y

print("dragging", _x, _y)

camera_set_view_pos(camera, _x, _y)

camera_set_view_pos(camera,
                    clamp( camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera) ),
                    clamp( camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera) ));
					
with (obj_ui_interface) {
	x = (camera_get_view_x(view_camera[0]) + viewPosX);
	y = (camera_get_view_y(view_camera[0]) + viewPosY);
}/// @description Insert description here
// You can write your code in this editor
