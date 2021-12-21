// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_random_point(){
	targetX = irandom_range(x-100, x+100)
	targetY = irandom_range(y-100, y+100)
	
	if place_empty(targetX, targetY) == false {
		targetX = irandom_range(x-200, x+200)
		targetY = irandom_range(y-200, y+200)
	}

	if (targetX < 100) {
		targetX = 100
	}

	if (targetX > global.room_x_size - 50) {
		targetX = global.room_x_size - 50	
	}

	if (targetY < 100) {
		targetY = 100
	}

	if (targetY > global.room_y_size - 100) {
		targetY = global.room_y_size - 100	
	}
}