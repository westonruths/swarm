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
	exit
}

//detect loss in health
if (hp < old_hp) {
	sprite_index = spr_pawn_hurt
	old_hp = hp
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
targets[0] = defend_target
targets[1] = eat_target
targets[2] = sleep_target
targets[3] = patient_target
targets[4] = doctor_target
targets[5] = cooking_target
targets[6] = hunt_target
targets[7] = construct_target
targets[8] = grow_target
targets[9] = mine_target
targets[10] = fell_target
targets[11] = haul_target
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
}
current_target--

//update path immediately if target changed
if old_targetX != targetX || old_targetY != targetY {
	//move towards point
	if mp_grid_path(global.grid, path, x, y, targetX, targetY, false)  {
		path_start(path, spd, path_action_stop, true)
	} else {
		move_to_random_point()	
	}
}
old_targetX = targetX
old_targetY = targetY

//if moving then just be idle
if path_position == 1 && (sprite_index == spr_pawn_idle || sprite_index == spr_pawn_walk) {
	sprite_index = spr_pawn_idle
}


