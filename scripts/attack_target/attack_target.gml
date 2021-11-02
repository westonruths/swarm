// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function attack_target(enemy){
	// Fire at closest enemy
	if (instance_exists(enemy)) {
		
		// Move towards closest enemy to engage
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
			drop_item()

			fell_target = noone
			haul_target = noone
			construct_target = noone
		}
	}
}