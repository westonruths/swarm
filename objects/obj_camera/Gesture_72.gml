/// @description Insert description here
// You can write your code in this editor
global.zoom_level = event_data[? "absolutescale"];
global.zoom_level = clamp(global.zoom_level, 0.5, 1.5)