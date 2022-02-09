/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	instance_create_layer(x,y,"Items",obj_wood)
	instance_destroy()
}

//optimization drawing code
//if point_in_rectangle(x, y, camera_get_view_x(view_camera[0])-32, camera_get_view_y(view_camera[0])-32, 
//	camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])+32, 
//	camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])+32) {
//    visible = true
//} else {
//    visible = false
//}