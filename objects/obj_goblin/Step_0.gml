/// @description Insert description here
// You can write your code in this editor

goblin_attack()


if old_targetX != targetX || old_targetY != targetY {
	//move towards point
	if mp_grid_path(global.grid, path, x, y, targetX, targetY, false)  {
		path_start(path, spd, path_action_stop, true)
	} else {
		move_to_random_point()	
	}
}
old_targetX = targetX
old_targetY = targetY
