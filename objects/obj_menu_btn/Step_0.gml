/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
visible = true
with (obj_ui_task) {
	if selected {
		with (other) { visible = false }
	}
}

if visible == false { exit }

event_inherited();

if hide_buttons {
	with obj_ui_task {
		direction = point_direction(x,y, other.x, other.y)	
		speed = 5
		
		if point_distance(x, y, other.x, other.y) < 3 {
			visible = false
			speed = 0
		}
	}
} else {
	with obj_ui_task {
		if selected { exit }
		
		direction = point_direction(x,y, xstart, ystart)	
		speed = 5
		visible = true
		
		if point_distance(x, y, xstart , ystart) < 3 {
			speed = 0
		}
	}
}