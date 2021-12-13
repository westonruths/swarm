// Logic to cut down trees
function Idle() {
	idle_counter -= 1
	
	if idle_counter <= 0 {
		move_to_random_point()
		idle_counter = irandom_range(50, 150)
	}
	
	active_wpn_index = 0 //no wpn
	with(active_wpn){
		target = noone
		weapon = other.active_wpn_index
	}
	
	// run away from enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy) && distance_to_point(enemy.x,enemy.y) < 100) {
		targetX = enemy.x - 100
		
		if (targetX < 50) {
			targetX = enemy.x + 150
		}
		
		
		targetY = irandom_range(y-100, y+100)
	}
	
	sprite_index = spr_pawn_walk
}