// Logic to defend
function Defend(){
	// Fire at closest enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if (instance_exists(enemy)) {
		
		// Move towards closest enemy to engage
		//move_towards_point(enemy.x, enemy.y, spd)
		targetX = enemy.x
		targetY = enemy.y
		
		defend_target = enemy
	
		// Equip our primary weapon
		active_wpn_index = equipped_wpn
		
		with(active_wpn){
			target = other.defend_target
			weapon = other.active_wpn_index
		}
		if (distance_to_point(enemy.x,enemy.y) < active_wpn.range) {
			targetX = x
			targetY = y
			
			// Drop current item that we are holding
			with(item_holding){
				x += 10;
				y += 10;
			}
			
			item_holding = noone
			fell_target = noone
			haul_target = noone
		}
	}
}