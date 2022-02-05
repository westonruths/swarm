/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

var remove = false
var movecam = false
with (obj_taskremove_btn) { remove = toggle_on }
with (obj_taskcamera_btn) { movecam = toggle_on }

if remove { help_text = "Tap or Drag to Cancel" }
if movecam { help_text = "Drag or Pinch to Move" }

if selected && mouse_check_button_pressed(mb_left) && !movecam {
	var ui = instance_position(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_ui_interface)
	if ui {exit;}
	
	rectx1 = device_mouse_x(0)
	recty1 = device_mouse_y(0)
	dragging = true
}

if dragging && mouse_check_button(mb_left) {
	rectx2 = device_mouse_x(0)
	recty2 = device_mouse_y(0)
	
	with (obj_cell) { 
		selected = false
	}
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(rectx1, recty1, rectx2, recty2, obj_cell, false, true, _list, false);
	if _num > 0 {
	    for (var i = 0; i < _num; ++i;) {
	        var cell = _list[| i]
			with (cell) {
				with (build_obj) {
					if variable_instance_exists(id, "build_cost") {
						if (!build_cost.done() && object_index == obj_construction) || object_index == obj_stockpile || object_get_parent(object_index) == obj_crop {
							with (other) {
								visible = true
								selected = true
							}
						}
					}
				}
			}
		}
	}
	ds_list_destroy(_list);
}

if dragging && mouse_check_button_released(mb_left) {
	with (obj_cell) { 
		visible = false
		selected = false
	}
	
	dragging = false
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(rectx1, recty1, rectx2, recty2, obj_cell, false, true, _list, false);
	
	if _num > 0 {
	    for (var i = 0; i < _num; ++i;) {
	        var cell = _list[| i]
			with(cell){
				with (build_obj) {
					if variable_instance_exists(id, "build_cost") {
						if (!build_cost.done() && object_index == obj_construction) || object_index == obj_stockpile || object_get_parent(object_index) == obj_crop {
							instance_destroy()
						}
					}
				}
			}
	    }
	}
	ds_list_destroy(_list);
}