// Logic to haul items
function Haul(){
	//find a stockpile that has an open spot
	var stockpile = instance_nearest(x, y, obj_stockpile)
	if (instance_exists(item_holding) && instance_exists(stockpile)) {
		if (instance_exists(stockpile.item)) {
			if (item_holding.object_index != stockpile.item.object_index) {				
				with(obj_stockpile) {
					if (instance_exists(item)) {
						if (other.item_holding.object_index == item.object_index) {
							stockpile = self	
						}
					}
				}
			}
		} else {
			with(obj_stockpile) {
				if (instance_exists(item)) {
					if (other.item_holding.object_index == item.object_index) {
						stockpile = self	
					}
				}
			}
		}
	}

	var construct = instance_nearest(x, y, obj_construction)
	if (instance_exists(stockpile) || instance_exists(construct)) {
		if (instance_exists(item_holding)){
			// Move item back to stockpile or construction site
			if instance_exists(stockpile) {
				targetX = stockpile.x
				targetY = stockpile.y
			} 
			
			if instance_exists(construct) {
				if (distance_to_object(construct) > 2) { 
					targetX = construct.x
					targetY = construct.y
				} else {
					path_speed = 0
					with (construct) { wood_cost -= 1 }
					instance_destroy(item_holding)
				}
			} 
			
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else if (instance_exists(haul_target)) {
			// Go move towards haul target
			targetX = haul_target.x
			targetY = haul_target.y
			
			active_wpn_index = 0 //no wpn
			with(active_wpn){
				target = noone
				weapon = other.active_wpn_index
			}
		} else {
			// Identify haul target
			var max_dist  = 9999
			
			with(obj_item) {
				var tmp_target = id
				var chosen = false
				with(obj_pawn) {
					if (haul_target == tmp_target) {
						chosen = true;
					}
				}
				
				if (!chosen && !stored) {
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