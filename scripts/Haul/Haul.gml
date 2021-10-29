// Logic to haul items
function Haul(){
	//find a stockpile that has an open spot
	//var stockpile = instance_nearest(x, y, obj_stockpile)
	//if (instance_exists(item_holding) && instance_exists(stockpile)) {
	//	if (instance_exists(stockpile.item)) {
	//		if (item_holding.object_index != stockpile.item.object_index) {				
	//			with(obj_stockpile) {
	//				if (instance_exists(item)) {
	//					if (other.item_holding.object_index == item.object_index) {
	//						stockpile = self	
	//					}
	//				}
	//			}
	//		}
	//	} else {
	//		with(obj_stockpile) {
	//			if (instance_exists(item)) {
	//				if (other.item_holding.object_index == item.object_index) {
	//					stockpile = self	
	//				}
	//			}
	//		}
	//	}
	//}
	var stockpile = noone
	if instance_exists(item_holding) {
		//Find stockpile with the item we are holding
		with(obj_stockpile) {
			if (instance_exists(item)) {
				if (other.item_holding.object_index == item.object_index) {
					stockpile = self	
				}
			} 
		}
	
		//Place item in empty stockpile that is closest
		if !instance_exists(stockpile) {
			var max_dist_stockpile  = 9999
			with(obj_stockpile) {
				var dist_stockpile = distance_to_object(other)
				if (dist_stockpile < max_dist_stockpile && !instance_exists(item)) {
					stockpile = self
					max_dist_stockpile = dist_stockpile
				}
			}
		} 
	}
	
	var construct = instance_nearest(x, y, obj_construction)
	if (instance_exists(item_holding)){
		// Move item back to stockpile or construction site
		if instance_exists(stockpile) {
			if (distance_to_object(stockpile) > 2) {
				targetX = stockpile.x
				targetY = stockpile.y
			} else {
				var stored_item = instance_create_layer(stockpile.x,stockpile.y,"Items",item_holding.object_index);
				with(stored_item) {
					stored = true
				}
				with(stockpile) {
					item = stored_item
					num_stored += 1
				}

				instance_destroy(item_holding)
			}
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