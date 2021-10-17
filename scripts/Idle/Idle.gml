// Logic to cut down trees
function Idle() {
	
	if (global.minutes mod 100 == 0) {
		targetX = random(room_width/2)
		targetY = random(room_height-300)
	}
	
	if (targetX != noone && targetY != noone) {
		move_towards_point(targetX, targetY, char_speed)
	}
	
	if (point_distance(x, y, targetX, targetY) < 10) {
		speed = 0
	}
	
	// Fire at closest enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy)) {
		if (distance_to_point(enemy.x,enemy.y) < 100 && global.minutes mod 50 == 0) {
			targetX = random(room_width/2)
			targetY = random(room_height-200)
		}
	}
}