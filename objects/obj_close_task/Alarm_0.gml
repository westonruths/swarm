/// @description Insert description here
// You can write your code in this editor
global.menu_open = false

with (obj_ui_task) {
	instance_create_layer(originalX,originalY,"Menu_Static", object_index);
	instance_destroy()
}

with (obj_ui_task_helper) {
	instance_destroy()
}
