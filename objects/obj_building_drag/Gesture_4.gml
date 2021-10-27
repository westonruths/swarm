/// @description Insert description here
// You can write your code in this editor
if (!global.building){
	exit
}

with(obj_cell){
	if collision_line(other.x, other.y, other.dragX, other.dragY, self, false, false) && build_obj == noone {
		build_obj = instance_create_layer(x,y,"Instances", other.object_index);
	}
}

dragX = x
dragY = y