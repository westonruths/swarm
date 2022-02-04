// Logic to defend
function Defend(){
	
	if instance_exists(defend_target) {
		_clear_previous_targets()
		if defend_target.hp <= 0 {
			defend_target = noone
			exit
		}
		
		move_to_around_free_point(defend_target.x, defend_target.y)
		if distance_to_object(defend_target) < global.grid_resolution {
			direction = point_direction(x, y, defend_target.x, defend_target.y)
			sprite_index = spr_pawn_defend
			path_speed = 0
			
		} else {
			sprite_index = spr_pawn_run
		}
	} else {
		//var max_dist  = global.grid_resolution * 2
			
		//with(obj_goblin) {
		//	var tmp_target = id
		//	var chosen = false
			
		//	with(obj_pawn) {
		//		if (defend_target == tmp_target) {
		//			chosen = true;
		//		}
		//	}
				
		//	if (!chosen && hp > 0) {
		//		var dist = distance_to_object(other)
		//		if (dist < max_dist) {
		//			other.defend_target = id
		//			max_dist = dist
		//		}
		//	}
		//}
	}
}