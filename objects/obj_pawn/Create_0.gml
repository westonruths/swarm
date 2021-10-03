/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// The active weapon being employed
active_wpn = instance_create_layer(x,y,"Items",obj_wpn)

// The primary enemy engagement weapon
equipped_wpn = 1;

// The weapon index that is active
active_wpn_index = 0;

// Action targets
defend_target = noone
fell_target = noone
haul_target = noone

// Item we are holding
item_holding = noone;

jobs[0] = Haul
jobs[1] = Fell
jobs[2] = Defend


