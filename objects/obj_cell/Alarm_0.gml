/// @description build rifleman
// You can write your code in this editor
if (char == noone && global.money >= global.rifle_cost) {
	var xx = x+sprite_get_xoffset(spr_gun_idle)/2;
	var yy = y-sprite_get_yoffset(spr_gun_idle)/2;
	char = instance_create_layer(xx,yy,"Instances",obj_gun);
	global.money -= global.rifle_cost;
}