/// @description Insert description here
// You can write your code in this editor

if (instance_exists(item)){
	if(other.object_index == item.object_index && !other.stored) {
		num_stored += 1	
		
		with(other) {
			instance_destroy()
		}
	}
} else {
	item = instance_create_layer(x,y,"Items",other.object_index);
	with(item) {
		stored = true
	}
	num_stored = 1
	
	with(other) {
		instance_destroy()
	}
}

