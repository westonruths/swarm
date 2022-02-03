/// @description Insert description here
// You can write your code in this editor
// Update zoom size
if keyboard_check_pressed(ord("I")) {
  global.zoom_level = 0.5;
} else if keyboard_check_pressed(ord("O")) {
  global.zoom_level = 1;
} else if keyboard_check_pressed(ord("P")) {
  global.zoom_level = 2;
}

var item_dragging = false
//with (obj_build_ui) {
//	if dragging {
//		item_dragging = true
//	}
//}

pinch_countdown -= 1
if !item_dragging && !device_mouse_check_button(1, mb_left) && pinch_countdown <= 0 {
	pinch_countdown = 0
	
	// start:
	if (mouse_check_button_pressed(mb_left)) {
	    drag_x = mouse_x
	    drag_y = mouse_y
	}
	// update:
	if (mouse_check_button(mb_left)) {
	    // actual dragging logic:
	    xTo = drag_x - (mouse_x - x)
	    yTo = drag_y - (mouse_y - y)
	}
	
	x += (xTo - x) / 1;
	y += (yTo - y) / 1;
}

// Update view size
zoomxTo = default_zoom_width * global.zoom_level;
zoomyTo = default_zoom_height * global.zoom_level;
currW += (zoomxTo - camera_get_view_width(cam)) / 1;
currH += (zoomyTo - camera_get_view_height(cam)) / 1;
camera_set_view_size(cam, currW, currH);

view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

// Clamp camrea
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);



// Update camera position
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

//global.view_width = camera_get_view_width(cam)
//global.view_height = camera_get_view_height(cam)

//global.build_x = global.view_width - (global.view_width/3) + 5
//global.build_y = 30;