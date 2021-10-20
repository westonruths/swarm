// Logic to haul items
function Haul(){
	var stockpile = instance_nearest(x, y, obj_stockpile)
	if (instance_exists(stockpile)) {
		// Move item back to stockpile
		if (instance_exists(item_holding)){
			move_towards_point(stockpile.x, stockpile.y, spd)
	
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else if (instance_exists(haul_target)) {
			move_towards_point(haul_target.x, haul_target.y, spd)
			
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else {
			var max_dist  = 9999
			
			with(obj_item) {
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