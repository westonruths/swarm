/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Randomly select name
name = Name();

// Create selector object
selector = instance_create_layer(x, y, "Instances", obj_pawn_selector)
with (selector) { pawn = other }

// Setup tool
tool = instance_create_layer(x,y,"Items",obj_tool)
with (tool) { pawn = other }

// The active weapon being employed
active_wpn = instance_create_layer(x,y,"Items",obj_wpn)

// The primary enemy engagement weapon
equipped_wpn = 1;

// The weapon index that is active
active_wpn_index = 0;

// Action targets
defend_target = noone
construct_target = noone
fell_target = noone
haul_target = noone

targets = [defend_target, construct_target, fell_target, haul_target]

// Idle target
idle_counter = 50
targetX = x + irandom_range(-50,50)
targetY = y + irandom_range(-50,50)
old_targetX = targetX
old_targetY = targetY

// Item we are holding
item_holding = noone

// Construct target
target_construct = noone

jobs[0] = Defend
jobs[1] = Patient
jobs[2] = Doctor
jobs[3] = Cook
jobs[4] = Hunt
jobs[5] = Construct
jobs[6] = Grow
jobs[7] = Mine
jobs[8] = PlantCut
jobs[9] = Haul
jobs[10] = Research

// Create job cells
menu_open = false;
var listSize = array_length(jobs);
for(var i = 0; i < listSize; i++) {
	task_cells[i] = instance_create_layer(40 + i*69,room_height - 85,"Menu_Objects",obj_task_cell);
	with(task_cells[i]) {
		job = other.jobs[i]
		pawn = other
		visible = false
	}
}