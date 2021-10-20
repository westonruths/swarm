// Logic to cut down trees
function Idle() {
	
	// Run away from closest enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy)) {
		if (distance_to_point(enemy.x,enemy.y) < 100) {
			//move_towards_point(enemy.x, enemy.y, spd*-1)
			move_to_random_point()
		}
	} else {
		move_to_random_point()
	}
}