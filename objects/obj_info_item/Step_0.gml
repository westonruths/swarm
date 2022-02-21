/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_released(mb_left)){
    if(position_meeting(device_mouse_x(0),device_mouse_y(0),id)){
		if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),obj_speed_controls)){
			
		} else {
			alarm[4] = 1	
		}
    }
}