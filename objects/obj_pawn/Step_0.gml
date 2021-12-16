/// @description Core Pawn Logic

if (global.time_pause) {
	path_speed = 0;
	image_speed = 0
	with(tool) { image_speed = 0 }
	exit;
} else {
	path_speed = 1	
	image_speed = 1
	with(tool) { image_speed = 1 }
}

menu_open = false;

if (direction > 90) && (direction < 270) image_xscale = -1; else image_xscale = 1;

// Check for character death
if (char_health <= 0) {
	instance_create_layer(x,y,"Instances",obj_pawn_dead)
	instance_destroy();
}

// Update weapon location
with(active_wpn){
	x = other.x + other.image_xscale*10;
	y = other.y;
	depth = other.depth-2;
}

image_index = tool.image_index
with(tool){
	x = other.x;
	y = other.y;
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

//update path immediately if target changed
if old_targetX != targetX || old_targetY != targetY {
	//move towards point
	if mp_grid_path(global.grid, path, x, y, targetX, targetY, true)  {
		path_start(path, spd, path_action_stop, true)
	}
}
old_targetX = targetX
old_targetY = targetY

targets = [defend_target, construct_target, fell_target, haul_target]

//if moving then just be idle
if path_position == 1 && (sprite_index == spr_pawn_idle || sprite_index == spr_pawn_walk) {
	sprite_index = spr_pawn_idle
}

