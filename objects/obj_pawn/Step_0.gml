/// @description Core Pawn Logic

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	with(tool) { image_speed = 0 }
	with(hair) { image_speed = 0 }
	exit;
} else {
	path_speed = spd * global.game_speed
	image_speed = 1 * work_spd * global.game_speed
	with(tool) { image_speed = 1 * other.work_spd * global.game_speed}
	with(hair) { image_speed = 1 * other.work_spd * global.game_speed}
}

menu_open = false;

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

// Check for character death
if (char_health <= 0) {
	path_speed = 0;
	sprite_index = spr_pawn_dead
	image_index = tool.image_index
	with(hair) { image_index = other.image_index }
	exit
}

//detect loss in health
if (char_health < char_old_health) {
	sprite_index = spr_pawn_hurt
	char_old_health = char_health
}
if (sprite_index == spr_pawn_hurt && image_index < image_number - 1) {
	path_speed = 0;
	with(tool) { image_index = other.image_index }
	with(hair) { image_index = other.image_index }
	exit
}
char_old_health = char_health

// Update weapon location
with(active_wpn){
	x = other.x + other.image_xscale*10;
	y = other.y;
	depth = other.depth-2;
}

image_index = tool.image_index
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
Idle()
var listSize = array_length(task_cells);
for(var i = listSize - 1; i >= 0; i--) {
	with(task_cells[i]) {
		visible = false
	}
	
	if (task_cells[i].enabled) {
		script_execute(task_cells[i].job)
	}
}
Eat()

//update path immediately if target changed
if old_targetX != targetX || old_targetY != targetY {
	//move towards point
	if mp_grid_path(global.grid, path, x, y, targetX, targetY, true)  {
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


