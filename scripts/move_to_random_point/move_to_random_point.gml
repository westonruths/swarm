// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_random_point(){
	
	//move_towards_point(targetX, targetY, spd)

	//if (point_distance(x, y, targetX, targetY) < 10) {
	//	speed = 0
	//}
	if (timer <= 0) {
		timer = irandom_range(room_speed, room_speed*10)
		
		targetX = irandom_range(x-100, x+100)
		targetY = irandom_range(y-100, y+100)
		
		print(name, targetX, targetY)

		if (targetX < 100) {
			targetX = 100
		}

		if (targetX > room_width - 50) {
			targetX = room_width - 50	
		}

		if (targetY < 100) {
			targetY = 100
		}

		if (targetY > room_height - 100) {
			targetY = room_height - 100	
		}
	} else {
		timer--
		exit
	}
}