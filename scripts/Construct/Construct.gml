// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Construct(){

	if (instance_exists(construct_target)) {
		fell_target = noone
		haul_target = noone
		drop_item()
		
		if (distance_to_point(construct_target.x, construct_target.y) > active_wpn.range/2) { 
			targetX = construct_target.x + sprite_width * choose(-1, 1)
			targetY = construct_target.y + sprite_width * choose(-1, 1)
		} else {
			path_speed = 0
			targetX = x
			targetY = y
		}
		
		active_wpn_index = 3 // Hammer
		with(active_wpn){
			target = other.construct_target
			weapon = other.active_wpn_index
		}
	} else {
		var max_dist  = 9999
			
		with(obj_construction) {
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (construct_target == tmp_target) {
					chosen = true;
				}
			}
				
			if (!chosen && build_cost.done()) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.construct_target = id
					max_dist = dist
				}
			}
		}
			
		with(construct_target){
			chosen = true;
		}
	}
}