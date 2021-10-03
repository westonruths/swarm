/// @description spawn enemies
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

var xx = room_width;
var yy = spawn_list[| irandom(ds_list_size(spawn_list)-1)];;

instance_create_layer(xx, yy, "Instances", obj_eyeball)

// Reset alarm to spawn next enemy
//alarm[0] = 4*room_speed;