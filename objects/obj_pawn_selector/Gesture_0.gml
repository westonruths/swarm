/// @description Insert description here
// You can write your code in this editor

if global.menu_open {
	if !instance_exists(obj_task_menu) {
		
		if instance_exists(obj_tech_menu) {
			exit
		}
		
		
		unpause()
	}
}

//unpause()

with pawn {
	alarm[0] = 1
}