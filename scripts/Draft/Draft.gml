// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Draft(){
	var _target = noone
	with (obj_target) {
		if pawn == other.id {
			_target = id
		}
	}
	
	if instance_exists(_target) {
		_clear_previous_targets()
		targetX = _target.x
		targetY = _target.y
		current_task = "Drafted"
		
		if x == targetX && y == targetY {
			sprite_index = spr_pawn_idle
		} else {
			sprite_index = spr_pawn_run
		}
		

		
		var _enemy = instance_nearest(x,y,obj_goblin)
		if distance_to_object(obj_goblin) < global.grid_resolution {
			direction = point_direction(x, y, _enemy.x, _enemy.y)
			sprite_index = spr_pawn_defend
			current_task = "Fighting"
			//targetX = x
			//targetY = y
		}
		
		//if distance_to_object(obj_goblin) < global.grid_resolution*3 {
		//	move_to_around_free_point(_enemy.x, _enemy.y)
		//}
	}
}