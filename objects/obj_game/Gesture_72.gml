/// @description Insert description here
// You can write your code in this editor
var _scale = event_data[? "relativescale"];
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);
_w *= _scale;
_h = _w * (room_height / room_width);

var _x = (room_width / 2) - (_w / 2);
var _y = (room_height / 2) - (_h / 2);

camera_set_view_pos(view_camera[0], _x, _y);
camera_set_view_size(view_camera[0], _w, _h);

camera_set_view_pos(camera,
                    clamp( camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera) ),
                    clamp( camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera) ));
					
					
// Debug
touch_x[0] = event_data[? "posX1"]
touch_y[0] = event_data[? "posY1"]
touch_x[1] = event_data[? "posX2"]
touch_y[1] = event_data[? "posY2"]