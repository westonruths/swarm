// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goblin_attack(){

	if instance_exists(hunt_target) {
		//print(hunt_target.name, hunt_target.hp)
		if hunt_target.hp <= 0 {
			hunt_target = noone
			sprite_index = spr_goblin_idle
			exit
		}
		
		move_to_around_free_point(hunt_target.x, hunt_target.y)
		//print(hunt_target.name, targetX, targetY)
		if distance_to_object(hunt_target) < 15 {
			direction = point_direction(x, y, hunt_target.x, hunt_target.y)
			sprite_index = spr_goblin_attack
			path_speed = 0
			
			with(hunt_target) {
				defend_target = other.id
			}
			
		} else {
			sprite_index = spr_goblin_run
		}
		
		if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
			hunt_target = instance_nearest(hunt_target.x, hunt_target.y, obj_room_wall)
		}
		
		if !mp_grid_path(global.enemy_grid, path, x, y, hunt_target.x, hunt_target.y, false)  {
			hunt_target = instance_nearest(x, y, obj_room_wall)
		} else {
			hunt_target = noone
		}
	} else {
		var max_dist  = 9999
			
		with(obj_pawn) {
			var tmp_target = id
			var chosen = false
			
			//with(obj_goblin) {
			//	if (hunt_target == tmp_target) {
			//		chosen = true;
			//	}
			//}
			
			if !mp_grid_path(global.enemy_grid, path, x, y, tmp_target.x, tmp_target.y, false) {
				chosen = true	
			}
				
			if (!chosen && hp > 0) {
				var dist = distance_to_object(other)
				if (dist < max_dist) {
					other.hunt_target = id
					max_dist = dist
				}
			}
		}
	}
}