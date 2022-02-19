/// @description Insert description here
// You can write your code in this editor

#region Save info items
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_info_item) {
	
	var _saveEntity = 
	{
		obj: object_get_name(object_index),
		layer: layer,
		x: x,
		y: y,
		hp: hp,
		hp_max: hp_max,
		title: title,
		detail: detail,
	}
	
	if variable_instance_exists(id, "selected") {
		_saveEntity.selected = selected
	}
	
	if variable_instance_exists(id, "obj_building_type") {
		_saveEntity.obj_building_type = obj_building_type	
	}
	
	if variable_instance_exists(id, "build_cost") {
		_saveEntity.build_cost = {
			original_costs: build_cost.original_costs,
			costs: build_cost.costs,
			original_construction_health: build_cost.original_construction_health,
			construction_health: build_cost.construction_health,
			built: build_cost.built,
		}
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "info_items.save")
buffer_delete( _buffer)
#endregion

#region Save pawns
//make save array
var _saveData = array_create(0)

//for every instance, create a struct and add it to the array
with (obj_pawn) {
	
	var _saveEntity = 
	{
		obj: object_get_name(object_index),
		layer: layer,
		x: x,
		y: y,
		hp: hp,
		char_food: char_food,
		char_energy: char_energy,
		mood: mood,
		hair: hair,
		task_cells: task_cells,
	}
	
	array_push(_saveData, _saveEntity)	
}

var _string = json_stringify(_saveData)
var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed, 1);
buffer_write( _buffer, buffer_string, _string)
buffer_save( _buffer, "settler.save")
buffer_delete( _buffer)
#endregion

print("Game saved! ", _string)