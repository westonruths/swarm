/// @description Core Pawn Logic

if (global.time_pause) {
	path_speed = 0;
	exit;
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
	x = other.x;
	y = other.y;
	depth = other.depth-2;
}

// Update item_holding location
with(item_holding){
	x = other.x;
	y = other.y;
	depth = other.depth-1;
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

