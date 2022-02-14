/// @description Chopped

hp -= dmg;

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}

if (hp <= 0) {
	instance_create_layer(x,y,"Items",obj_wood)
	instance_destroy()
}