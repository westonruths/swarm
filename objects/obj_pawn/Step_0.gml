/// @description Core Pawn Logic
speed = 0;

if (global.building) {
	exit;
} 

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

var listSize = array_length(jobs);
for(var i = listSize - 1; i >= 0; i--) {
	script_execute(jobs[i])
}
