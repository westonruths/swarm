/// @description spawn enemies
// You can write your code in this editor
if(room != rm_game) {
	exit;	
}

var xx = room_width;
var yy = irandom_range(100, room_height-100);

instance_create_layer(xx, yy, "Instances", obj_eyeball)

alarm[0] = 4*room_speed;