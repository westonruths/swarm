// Logic to haul items
function Haul(){
	//find a stockpile or construction site that has an open spot
	var stockpile = noone
	var construct = noone
	
	if instance_exists(item_holding) {
		//Find stockpile with the item we are holding
		with(obj_stockpile) {
			if (instance_exists(item)) {
				if (other.item_holding.object_index == item.object_index) {
					stockpile = self	
				}
			} 
		}
	
		//Place item we are holding in empty stockpile that is closest
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
		
		//Find a construction site that needs the item we are holding
		with(obj_construction) {
			if build_cost.needed(other.item_holding) {
				construct = self
			}
		}
	}
	
	// main logic depending on item holding
	if (instance_exists(item_holding)){
		// Move item back to stockpile or construction site
		if instance_exists(construct) {
			if construct.build_cost.needed(item_holding) {
				if (distance_to_object(construct) > 5) { 
					targetX = construct.x
					targetY = construct.y 
				} else {
					path_speed = 0
					with (construct) { 
						build_cost.reduce_cost(other.item_holding)
					}
					instance_destroy(item_holding)
				}
			}
		} else if instance_exists(stockpile) {
			if (distance_to_object(stockpile) > 2) {
				targetX = stockpile.x
				targetY = stockpile.y
			} else {
				var stored_item = instance_create_layer(stockpile.x,stockpile.y,"Items",item_holding.object_index);
				with(stored_item) {
					stored = true
					stored_stockpile = stockpile
				}
				with(stockpile) {
					item = stored_item
					num_stored += 1
				}

				instance_destroy(item_holding)
			}
		} else {
			drop_item()
			haul_target = noone
		}

		active_wpn_index = 0 //no wpn
		with(active_wpn){
			target = noone
			weapon = other.active_wpn_index
		}
	} else if (instance_exists(haul_target)) {
		// see if a construct needs the resource
		with(obj_construction) {
			if build_cost.needed(other.haul_target) {
				construct = self
			}
		}
			
		if !haul_target.stored {
			//Find stockpile with the needed item
			with(obj_stockpile) {
				if (instance_exists(item)) {
					if (other.haul_target.object_index == item.object_index) {
						stockpile = self	
					}
				} 
			}
			//Find stockpile that is empty
			with(obj_stockpile) {
				if (!instance_exists(item)) {
					stockpile = self
				}
			}
		}
		
		if instance_exists(construct) || instance_exists(stockpile) {
			// Go move towards haul target
			if (distance_to_object(haul_target) > 2) { 
				targetX = haul_target.x
				targetY = haul_target.y
			} else {
				item_holding = haul_target
				with(haul_target) { 
					stored = false 
					with (stored_stockpile) {
						num_stored -= 1
					}
					stored_stockpile = noone
				}
				haul_target = noone
			}
		} else {
			var tmp_haul_target = noone
			with(obj_item) {
				with(obj_construction) {
					if build_cost.needed(other) {
						tmp_haul_target = other
					}
				}
			}
			haul_target = tmp_haul_target
		}
		
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
			
			// see if a construct needs the resource
			with(obj_construction) {
				if build_cost.needed(other) {
					construct = self
				}
			}
			
			if !stored {
				//Find stockpile with the item
				with(obj_stockpile) {
					if (instance_exists(item)) {
						if (other.object_index == item.object_index) {
							stockpile = self	
						}
					} 
				}
				//Find stockpile that is empty
				with(obj_stockpile) {
					if (!instance_exists(item)) {
						stockpile = self
					}
				}
			}
			
			// See if another pawn is targeting this item
			with(obj_pawn) {
				if (haul_target == tmp_target) {
					chosen = true;
				}
			}
		
			if !chosen && (instance_exists(stockpile) || instance_exists(construct)) {
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