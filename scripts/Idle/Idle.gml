// Logic to cut down trees
function Idle() {
	move_to_random_point()
	
	// Run away from closest enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy) && distance_to_point(enemy.x,enemy.y) < 100) {
		//move_to_random_point()
	}
}