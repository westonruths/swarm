/// @description Insert description here
// You can write your code in this editor

with (obj_info_item) instance_destroy()

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