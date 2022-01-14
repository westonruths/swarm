/// @description Tap Event
// Close out other pawn menus
setup_pawn_menu()

print(name)
print("Defend Target: ", defend_target)
print("Construct Target: ", construct_target)
print("Cooking Target: ", cooking_target)
print("Cook Haul Target: ", cook_haul_target)
print("Plant Cut Target: ", fell_target)
print("Haul Target: ", haul_target)
print("Target Construct: ", target_construct)
print("Item Holding: ", item_holding)
print("Current X, Y: ", x, y)
print("Target X, Y: ", targetX, targetY)
print("Path Speed: ", path_speed)
print("Path Position: ", path_position)
print("Moving To: ", object_get_name(instance_position(targetX, targetY, obj_building)))
print("---------------------------------------")