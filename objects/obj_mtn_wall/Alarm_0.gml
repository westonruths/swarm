/// @description Mined

hp -= dmg;

var chance = irandom_range(0, 100)
if (hp <= 0) {
	if chance < 60 {
		instance_create_layer(x,y,"Items",obj_stone)
	}
	instance_destroy()
}

repeat(5){
	instance_create_layer(x,y,"Instances",obj_debri)
}