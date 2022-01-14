// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function _clear_previous_targets(){
	for(var i = targets_listsize - 1; i > current_target; i--) {
		targets[i] = noone
	}
}