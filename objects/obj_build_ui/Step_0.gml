/// @description Insert description here
// You can write your code in this editor
event_inherited()

if (global.building == false) && selected == false {
	instance_destroy();
}

if selected && mouse_check_button_pressed(mb_left){
	var cell = instance_position(mouse_x, mouse_y, obj_cell)
	var confirm = instance_position(mouse_x, mouse_y, obj_confirm_build)
	
	if confirm {exit;}
	
	print(mouse_x, mouse_y, cell)
	with (cell) {
		sprite_index = spr_cell_selected;
	}
	
	var tmp_build_cost = build_cost.new_cost()
	var tmp_obj_building_type = obj_building_type

	with(cell){
		if !instance_exists(build_obj) {
			build_obj = instance_create_layer(x,y,"Buildings",obj_construction);

			with(build_obj) {
				build_cost = tmp_build_cost
				obj_building_type = tmp_obj_building_type;	
			}
		}
	}
}