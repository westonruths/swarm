/// @description Mined

hp -= 1;

if (hp <= 0) {
	instance_create_layer(x,y,"Items",obj_stone)
	instance_destroy()
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}