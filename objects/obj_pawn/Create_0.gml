/// @description Insert description here
// You can write your code in this editor
char_health = 10;
char_health_max = 10;

spd = 1;
path = path_add();
test_path = path_add();

// Randomly select name
name = Name();

// Create selector object
selector = instance_create_layer(x, y, "Instances", obj_pawn_selector)
with (selector) { pawn = other }

// Setup tool
tool = instance_create_layer(x,y,"Items",obj_tool)
with (tool) { pawn = other }

// Setup hair
hair = instance_create_layer(x,y,"Items",obj_hair)
with (hair) { pawn = other }

// The active weapon being employed
active_wpn = instance_create_layer(x,y,"Items",obj_wpn)

// The primary enemy engagement weapon
equipped_wpn = 1;

// The weapon index that is active
active_wpn_index = 0;

// Action targets
defend_target = noone
hunt_target = noone
construct_target = noone
grow_target = noone
cooking_target = noone
fell_target = noone
mine_target = noone
haul_target = noone

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
	task_cells[i] = instance_create_layer(global.view_width - 100,global.build_y + i*35,"Menu_Objects",obj_task_cell);
	with(task_cells[i]) {
		job = other.jobs[i]
		pawn = other
		visible = false
	}
}
