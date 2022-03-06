// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function goblin_raid(){
	var _num_goblins = 0
	with (obj_storyteller) { _num_goblins = num_goblins }
	
	var _goblin = noone
	repeat(_num_goblins) {
		var _x = irandom_range(0,global.room_y_size)
		var _y = 16
	
		var max_dist = 9999
		var cell = noone
		with (obj_cell) {
			var dist = distance_to_point(_x, _y)
			if  dist < max_dist && !instance_exists(build_obj) {
				max_dist = dist
				cell = id
			}
		}
		
		_goblin = instance_create_layer(cell.x, cell.y, "Instances", obj_goblin)
	}
	
	with (quests) { quest_array[quest.defeat_goblins][1] = 0}
	
		
	//if instance_exists(_goblin) {
	//	with (obj_camera) {
	//		xPanTo = _goblin.x
	//		yPanTo = _goblin.y
	//	}
	//}
}