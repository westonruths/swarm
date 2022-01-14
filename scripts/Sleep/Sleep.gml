// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Sleep(){	
	var main_pawn = self
	
	if char_energy/char_energy_max >= 1.0 { 
		sleep_target = noone 
		exit
	}
		
	if (instance_exists(sleep_target) && char_energy/char_energy_max < 1.0) {
		_clear_previous_targets()
		
		drop_item()
		
		targetX = sleep_target.x-3
		targetY = sleep_target.y
		if path_position == 1 && distance_to_object(sleep_target) < global.grid_resolution {
			direction = point_direction(x, y, sleep_target.x, sleep_target.y)
			sprite_index = spr_pawn_sleep
		} else {
			sprite_index = spr_pawn_walk
		}
		
	} else if (char_energy/char_energy_max < 0.2) {
		var max_dist  = 9999
			
		with(obj_bed) {
			if !build_cost.built {
				continue
			}
			
			var tmp_target = id
			var chosen = false
			var spot_free = false
			
			with(obj_pawn) {
				if sleep_target == tmp_target {
					chosen = true
					break
				}
			}
			
			//with(main_pawn) {
			//	spot_free = check_around_free_point(other.x, other.y)
			//}
				
			//if (!chosen && spot_free) {
			if (!chosen) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.sleep_target = id
					max_dist = dist
				}
			}
		}
	}
}