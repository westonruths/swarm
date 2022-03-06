/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	exit;
} else {
	path_speed = spd * global.game_speed
	image_speed = 1 * global.game_speed
}

// Check for character death
if (hp <= 0) {
	path_speed = 0;
	sprite_index = spr_goblin_dead
	exit
}

//detect loss in health
if (hp < old_hp) {
	sprite_index = spr_goblin_hurt
	old_hp = hp
	hunt_target = noone //see if there is a closer target
}
if (sprite_index == spr_goblin_hurt && image_index < image_number - 1) {
	path_speed = 0;
	exit
}
old_hp = hp

goblin_attack()
goblin_retreat()

//if (path_position == path_positionprevious && path_position != 1 && sprite_index == spr_goblin_run) {
//	if mp_grid_path(global.enemy_grid, path, x, y, targetX, targetY, false)  {
//		path_start(path, spd, path_action_stop, true)
//		sprite_index = spr_goblin_run
//		//print("goblin", id,  "starting new path", targetX, targetY, x, y, path_speed)
//	}
//}

if (old_targetX != targetX || old_targetY != targetY) {
	//move towards point
	if mp_grid_path(global.enemy_grid, path, x, y, targetX, targetY, false)  {
		path_start(path, spd, path_action_stop, true)
	} else {
		var max_dist = 9999
		var cell = noone
		with (obj_cell) {
			var dist = distance_to_point(other.x, other.y)
			if  dist < max_dist && place_empty(x, y, obj_wall) && place_empty(x, y, obj_mtn_wall) && place_empty(x, y, obj_tree) && place_empty(x, y, obj_door){
				max_dist = dist
				cell = id
			}
		}
		
		x = cell.x
		y = cell.y
	}
}
old_targetX = targetX
old_targetY = targetY

if path_position == 0 && x == targetX && y == targetY {
	path_position = 1	
}
