/// @description Insert description here
// You can write your code in this editor
with(other) {
	instance_destroy();
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}

enemy_health -= 2;
speed = 0;

sprite_index = spr_eyeball_hurt;
