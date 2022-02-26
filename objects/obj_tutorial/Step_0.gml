/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();

switch status {
	case tutorial.start:
		x = global.view_width/4
		y = global.view_height/4
		image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
		
		title = "Tutorial"
		detail = "Let's run through a quick tutorial. \nTap to continue."
		
		if(mouse_check_button_released(mb_left)){
		    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		        status += 1
		    }
		}
	break;
	
	case tutorial.stockpile:
		x = global.view_width/4
		y = global.view_height/4
		image_xscale = global.view_width/2/sprite_get_width(spr_lt_box)
		image_yscale = global.view_width/4/sprite_get_height(spr_lt_box)
		
		title = "Build a Stockpile"
		detail = "First, let's build a stockpile. First tap on the build button."
		
		if(mouse_check_button_released(mb_left)){
		    if(position_meeting(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id)){
		        status += 1
		    }
		}
	
	break;
	
}