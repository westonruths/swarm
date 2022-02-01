/// @description Insert description here
// You can write your code in this editor
event_inherited()
if (global.building == false) {
	instance_destroy();
}

x = (camera_get_view_x(view_camera[0]) + viewPosX);
y = (camera_get_view_y(view_camera[0]) + viewPosY);