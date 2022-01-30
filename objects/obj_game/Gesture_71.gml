/// @description Insert description here
// You can write your code in this editor

var _scale = event_data[? "relativescale"];
var _w = camera_get_view_width(camera);
var _h = camera_get_view_height(camera);
var _x = camera_get_view_x(camera) + (_w / 2);
var _y = camera_get_view_y(camera) + (_h / 2);

_w *= _scale;
if _w < 200 { 
	_w = 200 
}
_h = _w * (global.view_height / global.view_width);

print("In: ", _scale, _w, _h, _x, _y)

//camera_set_view_pos(camera, _x, _y);
camera_set_view_size(camera, _w, _h);

camera_set_view_pos(camera,
                    clamp( camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera) ),
                    clamp( camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera) ));
					

// Debug
touch_x[0] = event_data[? "posX1"]
touch_y[0] = event_data[? "posY1"]
touch_x[1] = event_data[? "posX2"]
touch_y[1] = event_data[? "posY2"]
