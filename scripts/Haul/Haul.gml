// Logic to haul items
function Haul(){
	//find a stockpile or construction site that has an open spot
	var stockpile = noone
	var construct = noone
	var main_pawn = id
	
	// main logic depending on item holding
	if (instance_exists(item_holding)){
		haul_target = noone
		sprite_index = spr_pawn_carry
		
		//Find stockpile with the item we are holding
		with(obj_stockpile) {
			if (instance_exists(item)) {
				if (other.item_holding.object_index == item.object_index) {
					stockpile = id	
				}
			} 
		}
	
		//Place item we are holding in empty stockpile that is closest
		if !instance_exists(stockpile) {
			var max_dist_stockpile  = 9999
			with(obj_stockpile) {
				var dist_stockpile = distance_to_object(other)
				if (dist_stockpile < max_dist_stockpile && !instance_exists(item)) {
					stockpile = id
					max_dist_stockpile = dist_stockpile
				}
			}
		} 
		
		//Find a construction site that needs the item we are holding
		with(obj_construction) {
			var construct_chosen = false
			with(obj_pawn) {
				if other == target_construct && id != main_pawn {
					construct_chosen = true	
				}
			}
			
			if !construct_chosen && build_cost.needed(other.item_holding) && place_empty(x,y,obj_pawn) {
				construct = id
			} else {
				draw_ellipse_colour(x-5, y-5, x+5, y+5, c_red, c_red, true);	
			}
		}
		
		// Move item back to stockpile or construction site
		if instance_exists(construct) {
			if construct.build_cost.needed(item_holding) {
				if (distance_to_object(construct) > global.grid_resolution/2) { 
					move_to_around_point(construct.x, construct.y)
				} else {
					with (construct) { 
						build_cost.reduce_cost(other.item_holding)
					}
					instance_destroy(item_holding)
				}
			}
		} else if instance_exists(stockpile) {
			// Move to stockpile
			if (distance_to_object(stockpile) > 2) {
				targetX = stockpile.x
				targetY = stockpile.y
			} else {
				// Deposit item at stockpile
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
		item_holding = noone
		// see if a construct needs the resource
		with(obj_construction) {
			var construct_chosen = false
			with(obj_pawn) {
				if other == obj_pawn.target_construct {
					construct_chosen = true	
				}
			}
			
			if !construct_chosen && build_cost.needed(other.haul_target) && place_empty(x,y,obj_pawn) {
				construct = id
			}
		}
		
		// see if a stockpile has our needed item
		if !haul_target.stored {
			//Find stockpile with the needed item
			with(obj_stockpile) {
				if (instance_exists(item)) {
					if (other.haul_target.object_index == item.object_index) {
						stockpile = id
					}
				} 
			}
			//Find stockpile that is empty
			with(obj_stockpile) {
				if (!instance_exists(item)) {
					stockpile = id
				}
			}
		}
		
		if instance_exists(construct) || instance_exists(stockpile) {
			// Go move towards haul target
			if (distance_to_object(haul_target) > 2) { 
				targetX = haul_target.x
				targetY = haul_target.y
			} else {
				// Pick up item
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
						tmp_haul_target = other.id
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
		
		// See if another pawn is targeting or carrying this item
		with(obj_pawn) {
			if (haul_target == other.haul_target) && id != other.id {
				other.haul_target = noone
			}
				
			if (item_holding == other.haul_target) && id != other.id {
				other.haul_target = noone
			}
		}
	} else {
		// Identify haul target
		var max_dist  = 9999
			
		with(obj_item) {
			var tmp_target = id
			var chosen = false
			
			with(obj_construction) {
				var construct_chosen = false
				with(obj_pawn) {
					if other == obj_pawn.target_construct {
						construct_chosen = true	
					}
				}
			
				if !construct_chosen && build_cost.needed(other) && place_empty(x,y,obj_pawn) {
					construct = id
				}
			}
			
			if !stored {
				//Find stockpile with the item
				with(obj_stockpile) {
					if (instance_exists(item)) {
						if (other.object_index == item.object_index) {
							stockpile = id	
						}
					} 
				}
				//Find stockpile that is empty
				with(obj_stockpile) {
					if (!instance_exists(item)) {
						stockpile = id
					}
				}
			}
			
			// See if another pawn is targeting or carrying this item
			with(obj_pawn) {
				if (haul_target == tmp_target) {
					chosen = true;
				}
				
				if (item_holding == tmp_target) {
					chosen = true;
				}
			}
			
			// Get the closest item that isn't chosen or already at another spot
			if !chosen && (instance_exists(stockpile) || instance_exists(construct)) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.haul_target = id
					max_dist = dist
				}
			}
		}
	}
	
	target_construct = construct
}