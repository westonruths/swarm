// Logic to cut down trees
function PlantCut() {
	if (instance_exists(fell_target)) {
		haul_target = noone
		drop_item()
		
		if (distance_to_object(fell_target) > 2) { 
			targetX = fell_target.x
			targetY = fell_target.y
		} else {
			path_speed = 0
		}
		active_wpn_index = 2 // Axe
		with(active_wpn){
			target = other.fell_target
			weapon = other.active_wpn_index
		}
	} else {
		var max_dist  = 9999
			
		with(obj_tree) {
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (fell_target == tmp_target) {
					chosen = true;
				}
			}
				
			if (!chosen) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.fell_target = id
					max_dist = dist
				}
			}
		}
			
		with(fell_target){
			chosen = true;
		}
	}
}