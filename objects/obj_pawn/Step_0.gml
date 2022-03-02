/// @description Core Pawn Logic
if (!global.menu_open) {
	menu_open = false;
}

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	with(tool) { image_speed = 0 }
	with(hair) { image_speed = 0 }
	exit;
} else {
	path_speed = spd * global.game_speed
	image_speed = 1 * global.game_speed
	with(tool) { image_speed = 1 * global.game_speed}
	with(hair) { image_speed = 1 * global.game_speed}
	//image_speed = 1 * work_spd * global.game_speed
	//with(tool) { image_speed = 1 * other.work_spd * global.game_speed}
	//with(hair) { image_speed = 1 * other.work_spd * global.game_speed}
}

// Check for character death
if (hp <= 0) {
	path_speed = 0;
	sprite_index = spr_pawn_dead
	image_index = tool.image_index
	with(hair) { image_index = other.image_index }
	
	current_target = 0
	_clear_previous_targets()
	
	exit
}

//detect loss in health
if (hp < old_hp) {
	sprite_index = spr_pawn_hurt
	image_index = 0
	old_hp = hp
	mood.thoughtactive[mood_thoughts.pain] = 1
}
if (sprite_index == spr_pawn_hurt && image_index < image_number - 1) {
	path_speed = 0;
	with(tool) { image_index = other.image_index }
	with(hair) { image_index = other.image_index }
	exit
}
old_hp = hp

// Update weapon location
with(active_wpn){
	x = other.x + other.image_xscale*10;
	y = other.y;
	depth = other.depth-2;
}

with(tool){
	depth = other.depth-2;
	image_xscale = other.image_xscale
}

// Update item_holding location
with(item_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}
with(food_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}
with(medicine_holding){
	if other.image_xscale <= 0 {
		x = other.x-3;
	} else {
		x = other.x	
	}
	y = other.y-17;
	depth = other.depth-3;
	image_xscale = other.image_xscale
}

// Update hair
with(hair){
	image_index = other.image_index
	depth = other.depth-2;
	image_xscale = other.image_xscale
}

// Update position of selector
with(selector) {
	x = other.x;
	y = other.y;
}

// Loop through and execute enabled tasks
targets[0] = mood_target
targets[1] = defend_target
targets[2] = eat_target
targets[3] = sleep_target
targets[4] = patient_target
targets[5] = doctor_target
targets[6] = cooking_target
targets[7] = hunt_target
targets[8] = construct_target
targets[9] = grow_target
targets[10] = mine_target
targets[11] = fell_target
targets[12] = haul_target
current_target = targets_listsize-1
Idle()
var listSize = array_length(task_cells);
for(var i = listSize - 1; i >= 1; i--) {
	if (task_cells[i].enabled) {
		script_execute(task_cells[i].job)
	}
	current_target--
}
// Sleep and then eat next
Sleep()
current_target--
Eat()
current_target--
// Do defend last since it is highest priority
if (task_cells[0].enabled) {
	script_execute(task_cells[0].job)
} else {
	Hide()	
}
current_target--
// Mood actions
Mood()
current_target--

//update path immediately if target changed
if (old_targetX != targetX || old_targetY != targetY) && sprite_index != spr_pawn_defend {
	//move towards point
	if mp_grid_path(global.grid, path, x, y, targetX, targetY, false)  {
		path_start(path, spd, path_action_stop, true)
	} else {
		var max_dist = 9999
		var cell = noone
		with (obj_cell) {
			var dist = distance_to_point(other.x, other.y)
			if  dist < max_dist && place_free(x, y) {
				max_dist = dist
				cell = id
			}
		}
		
		x = cell.x
		y = cell.y
	}
}
old_targetX = targetX
old_targetY = targetY

//if moving then just be idle
if path_position == 1 && (sprite_index == spr_pawn_idle || sprite_index == spr_pawn_walk) {
	sprite_index = spr_pawn_idle
}

if path_position == 0 && x == targetX && y == targetY {
	path_position = 1	
}


