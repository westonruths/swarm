// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Grow(){
	with (grow_target) {
		if build_counter >= max_build_counter {
			with (other) {
				grow_target = noone
				sprite_index = spr_pawn_walk
			}
		}
	}
	
	if (instance_exists(grow_target)) {
		fell_target = noone
		haul_target = noone
		item_holding = noone
		drop_item()
		
		move_to_around_free_point(grow_target.x, grow_target.y)
		if path_position == 1 {
			direction = point_direction(x, y, grow_target.x, grow_target.y)
			sprite_index = spr_pawn_digging
		} else {
			sprite_index = spr_pawn_walk
		}
		
	} else {
		var max_dist  = 9999
			
		with(obj_crop) {
			var tmp_target = id
			var chosen = false
			with(obj_pawn) {
				if (grow_target == tmp_target) {
					chosen = true;
				}
			}
			
			if !chosen && (build_counter < max_build_counter) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.grow_target = id
					max_dist = dist
				}
			}
		}
			
		with(grow_target){
			chosen = true;
		}
	}
}