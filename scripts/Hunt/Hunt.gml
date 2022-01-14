// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Hunt(){
	var max_dist  = 9999
	var animal = noone
	
	if !instance_exists(cooking_target) && !instance_exists(obj_raw_food) {
		with(obj_animal) {
			if selected {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					animal = id
					max_dist = dist
				}
			}
		}
	
		// Fire at closest enemy
		if instance_exists(animal) {
			direction = point_direction(x, y, animal.x, animal.y)
			sprite_index = spr_pawn_run
		
			with(tool){
				x = other.active_wpn.x
				y = other.active_wpn.y
			}
		
			// Move towards closest enemy to engage
			move_to_around_free_point(animal.x, animal.y)
		
			hunt_target = animal
	
			// Equip our primary weapon
			active_wpn_index = equipped_wpn
		
			with(active_wpn){
				target = other.hunt_target
				weapon = other.active_wpn_index
			}
		
			if (distance_to_point(animal.x,animal.y) < active_wpn.range) {
				sprite_index = spr_pawn_idle
				targetX = x
				targetY = y
				
				_clear_previous_targets()
			}
		}
	}
}