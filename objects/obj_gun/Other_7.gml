/// @description Insert description here

// Fire when done with animation
if (sprite_index == spr_gun_charge) {
	sprite_index = spr_gun_shoot;
	audio_play_sound(snd_laser, 1, false);
	var bullet = instance_create_layer(x,y,"Instances",obj_bullet)
	var bullet_speed = 10;

	// Aim straight ahead
	with(bullet){
		move_towards_point(x+100, y,bullet_speed)
	}

	/* Aiming at closest enemy
	var enemy = instance_nearest(x, y, obj_enemy)
	if instance_exists(enemy) {
		with(bullet){
			move_towards_point(enemy.x, enemy.y,bullet_speed)
		}
	} else {
		with(bullet){
			move_towards_point(x+100, y,bullet_speed)
		}
	}
	*/
} else {
	sprite_index = spr_gun_idle;
}

