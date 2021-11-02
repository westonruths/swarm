/// @description Insert description here
// You can write your code in this editor

if !build_cost.done() {
	exit
}

with(other) {
	instance_destroy();
	other.build_cost.construction_health -= bullet_dmg;
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}