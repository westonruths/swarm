// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Construct(){
	var construct = instance_nearest(x, y, obj_construction)
	if (instance_exists(construct)) {
		// Move item back to stockpile
		if (instance_exists(item_holding)){
			targetX = stockpile.x
			targetY = stockpile.y
	
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else if (instance_exists(haul_target)) {
			targetX = haul_target.x
			targetY = haul_target.y
			
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else {
			var max_dist  = 9999
			
			with(obj_wood) {
				var tmp_target = id
				var chosen = false
				with(obj_pawn) {
					if (haul_target == tmp_target) {
						chosen = true;
					}
				}
				
				if (!chosen) {
					var dist = distance_to_object(other)
					if (dist < max_dist) {
						other.haul_target = id
						max_dist = dist
					}
				}
			}
			
			with(haul_target){
				chosen = true;
			}
		}
	}
}