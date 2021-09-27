/// @description Insert description here
// You can write your code in this editor

visible = true;
if (instance_exists(char)) {
	visible = false;
} else {	
	char = noone;
}

if (global.money < money_cost) {
	visible = false;
}