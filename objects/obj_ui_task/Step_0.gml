/// @description Insert description here
// You can write your code in this editor
event_inherited()

with (obj_ui_task) {
	if selected && self.id != other.id {
		with (other) { visible = false }
	}
}