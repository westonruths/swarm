// Logic to cut down trees
function PlantCut() {	
	var main_pawn = self
	with (fell_target) {
		if selected == false {
			other.fell_target = noone
		}
	}
		
	if (instance_exists(fell_target)) {
		haul_target = noone
		drop_item()
		
		move_to_around_free_point(fell_target.x, fell_target.y)
		if path_position == 1 && distance_to_object(fell_target) < global.grid_resolution {
			direction = point_direction(x, y, fell_target.x, fell_target.y)
			sprite_index = spr_pawn_chop
		} else {
			sprite_index = spr_pawn_walk
		}
	} else {
		var max_dist  = 9999
			
		with(obj_tree) {
			var tmp_target = id
			var chosen = false
			var spot_free = false
			
			if !selected continue
			
			with(obj_pawn) {
				if (fell_target == tmp_target) {
					chosen = true;
				}
			}
			
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
				
			if (!chosen && selected && spot_free) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.fell_target = id
					max_dist = dist
				}
			}
		}
	}
}