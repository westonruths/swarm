/// @description Insert description here
// You can write your code in this editor
hp = 100
old_hp = hp
hp_max = 100

targetX = x + irandom_range(-50,50)
targetY = y + irandom_range(-50,50)
old_targetX = targetX
old_targetY = targetY

spd = 1;
path = path_add();

hunt_target = noone

strength = 10
accuracy = 70