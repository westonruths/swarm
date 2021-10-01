/// @description Insert description here
// You can write your code in this editor

visible = false;

if (global.building) {
	visible = true;
}

if (instance_exists(char)) {
	visible = false;
} else {	
	char = noone;
}

if (global.money < global.rifle_cost) {
	visible = false;
}
