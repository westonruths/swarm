/// @description Insert description here
// You can write your code in this editor
if (global.building){
	exit;
}

if (!ready) {
	exit;
}

with(obj_gun) {
	alarm[1] = random_range(0, 60)
}

ready = false;
image_alpha = 0;
sprite_index = spr_btn_rifle_recharge;

alarm[0] = base_time;