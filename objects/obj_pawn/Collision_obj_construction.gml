/// @description Insert description here
// You can write your code in this editor

with(item_holding){
	instance_destroy()
}

if instance_exists(item_holding) {	
	with(other) {
		wood_cost -= 1	
	}
}