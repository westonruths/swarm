// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Mine(){
	var main_pawn = self
	with (mine_target) {
		if selected == false {
			other.mine_target = noone
		}
	}
		
	if (instance_exists(mine_target)) {
		haul_target = noone
		drop_item()
		
		move_to_around_free_point(mine_target.x, mine_target.y)
		if path_position == 1 && distance_to_object(mine_target) < global.grid_resolution {
			direction = point_direction(x, y, mine_target.x, mine_target.y)
			sprite_index = spr_pawn_mine
		} else {
			sprite_index = spr_pawn_walk
		}
	} else {
		var max_dist  = 9999
			
		with(obj_mtn_wall) {
			var tmp_target = id
			var chosen = false
			var spot_free = false
			
			with(obj_pawn) {
				if mine_target == tmp_target {
					chosen = true
				}
			}
			
			with(main_pawn) {
				spot_free = check_around_free_point(other.x, other.y)
			}
				
			if (!chosen && selected && spot_free) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.mine_target = id
					max_dist = dist
				}
			}
		}
	}
}