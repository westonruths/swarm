// Logic to cut down trees
function Idle() {
	move_to_random_point()
		
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy) && distance_to_point(enemy.x,enemy.y) < 100) {
		targetX = enemy.x - 100
		
		if (targetX < 50) {
			targetX = enemy.x + 150
		}
		
		
		targetY = irandom_range(y-100, y+100)
	}
}