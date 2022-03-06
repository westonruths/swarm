// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goblin_retreat(){

	if instance_number(obj_pawn) < start_num_pawns-1 {
		targetX = x
		targetY = 0
		
		if y <= 5 {
			instance_destroy()
		}
	}
	

}