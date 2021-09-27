/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_mine_explosion;

with(obj_enemy) {
	var dis = point_distance(x, y, other.x, other.y);
	if (dis > other.close_range && dis <= other.long_range) {
		audio_play_sound(snd_hit, 1, false);
		enemy_health -= 4;
	}
   
	if (dis <= other.close_range) {
		enemy_health -= 6;
	}
}