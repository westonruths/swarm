/// @description Insert description here
// You can write your code in this editor

raid_counter_hrs -= 1

if (raid_counter_hrs <= 0) {
	repeat(2) {
		instance_create_layer(irandom_range(0,global.room_y_size), 5, "Instances", obj_goblin)
	}
	
	raid_counter_hrs = 24 + irandom_range(-2,2)
	
	print("Goblin raid!")
}