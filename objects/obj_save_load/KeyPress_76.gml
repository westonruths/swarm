/// @description Insert description here
// You can write your code in this editor

unpause()

with (obj_info_item) instance_destroy()
with (obj_pawn) instance_destroy()

#region Load info items
if (file_exists("info_items.save")) {
	
	var _buffer = buffer_load("info_items.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, asset_get_index(_loadEntity.obj))) {
			hp = _loadEntity.hp
			hp_max = _loadEntity.hp_max
			title = _loadEntity.title
			detail = _loadEntity.detail
			
			if variable_instance_exists(id, "selected") {
				selected = _loadEntity.selected 
			}
			
			if variable_instance_exists(id, "obj_building_type") {
				obj_building_type = _loadEntity.obj_building_type	
			}
			
			if variable_instance_exists(id, "build_cost") {
				build_cost.original_costs = _loadEntity.build_cost.original_costs
				build_cost.costs = _loadEntity.build_cost.costs
				build_cost.original_construction_health = _loadEntity.build_cost.original_construction_health
				build_cost.construction_health = _loadEntity.build_cost.construction_health
				build_cost.built = _loadEntity.build_cost.built
			}
			
			if object_is_ancestor(object_index, obj_building) || object_is_ancestor(object_index, obj_resource) {
				with(instance_position(x, y, obj_cell)) { build_obj = other }	
			}
		}
	}
	print("Loaded info items! ", _string)
}
#endregion 

#region Load settler info
if (file_exists("settler.save")) {
	
	var _buffer = buffer_load("settler.save")
	var _string = buffer_read( _buffer, buffer_string)
	buffer_delete( _buffer)
	
	var _loadData = json_parse( _string)
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData)
		
		with (instance_create_layer(_loadEntity.x, _loadEntity.y, _loadEntity.layer, asset_get_index(_loadEntity.obj))) {

			hp = _loadEntity.hp
			old_hp = _loadEntity.old_hp
			char_food= _loadEntity.char_food
			char_energy= _loadEntity.char_energy
			hair.hair_type= _loadEntity.hair_type
			name = _loadEntity.name
			spd = _loadEntity.spd
			
			with (mood) {
				mood = _loadEntity.mood.mood
				mood_base = _loadEntity.mood.mood_base
				mood_goal = _loadEntity.mood.mood_goal
				thought = _loadEntity.mood.thought
				thoughtcaption = _loadEntity.mood.thoughtcaption
				thoughteffect = _loadEntity.mood.thoughteffect
				thoughtactive = _loadEntity.mood.thoughtactive
				thoughttimer = _loadEntity.mood.thoughttimer
				thoughttimero = _loadEntity.mood.thoughttimero
			}
	
			var listSize = array_length(jobs);
			for(var i = 0; i < listSize; i++) {
				task_cells[i].skill_level = _loadEntity.task_cells[i].skill_level
				task_cells[i].enabled = _loadEntity.task_cells[i].enabled
				task_cells[i].skill_exp = _loadEntity.task_cells[i].skill_exp
				task_cells[i].skill_next_level = _loadEntity.task_cells[i].skill_next_level
			}
		}
	}
	print("Loaded settlers! ", _string)
}
#endregion