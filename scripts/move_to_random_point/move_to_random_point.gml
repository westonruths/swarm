// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_random_point(){
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x-100, y-100, x+100, y+100, obj_cell, false, true, _list, false);
	if _num > 0 {
		var cell = _list[| irandom_range(0, _num-1)]
		targetX = cell.x
		targetY = cell.y
	}
	ds_list_destroy(_list);
	

	
	//targetX = irandom_range(x-100, x+100)
	//targetY = irandom_range(y-100, y+100)
	
	//if place_empty(targetX, targetY) == false {
	//	targetX = irandom_range(x-200, x+200)
	//	targetY = irandom_range(y-200, y+200)
	//}

	//if (targetX < 100) {
	//	targetX = 100
	//}

	//if (targetX > global.room_x_size - 50) {
	//	targetX = global.room_x_size - 50	
	//}

	//if (targetY < 100) {
	//	targetY = 100
	//}

	//if (targetY > global.room_y_size - 100) {
	//	targetY = global.room_y_size - 100	
	//}
}