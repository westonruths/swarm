// Logic to cut down trees
function Idle() {
	move_to_random_point()
	
	active_wpn_index = 0 //no wpn
	with(active_wpn){
		target = noone
		weapon = other.active_wpn_index
	}
		
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy) && distance_to_point(enemy.x,enemy.y) < 100) {
		targetX = enemy.x - 100
		
		if (targetX < 50) {
			targetX = enemy.x + 150
		}
		
		
		targetY = irandom_range(y-100, y+100)
	}
	
	if distance_to_point(targetX, targetY) < 5 {
		path_speed = 0	
	}
	
	sprite_index = spr_pawn_idle
	if path_speed == 0 {
		sprite_index = spr_pawn_idle
	} else {
		sprite_index = spr_pawn_walk
	}
}