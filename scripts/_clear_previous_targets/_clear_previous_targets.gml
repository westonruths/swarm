// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _clear_previous_targets(){
	for(var i = targets_listsize - 1; i > current_target; i--) {
		targets[i] = noone
		
		//drop if on haul unless cooking
		if i == 11 && !instance_exists(cook_haul_target) {
			drop_item()
			target_construct = noone
		}
	}
	
	//update targets
	defend_target = targets[0] 
	eat_target = targets[1] 
	sleep_target = targets[2] 
	patient_target = targets[3] 
	doctor_target = targets[4] 
	cooking_target = targets[5] 
	hunt_target = targets[6] 
	construct_target = targets[7] 
	grow_target = targets[8] 
	mine_target = targets[9] 
	fell_target = targets[10] 
	haul_target = targets[11] 
}