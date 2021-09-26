/// @description fire command
// You can write your code in this editor
sprite_index = spr_gun_shoot;
var bullet = instance_create_layer(x,y,"Instances",obj_bullet)
var enemy = instance_nearest(x, y, obj_enemy)
var bullet_speed = 100;
	
if instance_exists(enemy) {
	with(bullet){
		move_towards_point(enemy.x, enemy.y,bullet_speed)
	}
} else {
	with(bullet){
		move_towards_point(x+100, y,bullet_speed)
	}
}