/// @description Insert description here
// You can write your code in this editor
with(obj_cell){
	if collision_line(other.x, other.y, other.dragX, other.dragY, self, false, false) && build_obj == noone {
		build_obj = instance_create_layer(x,y,"Instances", obj_wall);
	}
}

dragX = x
dragY = y