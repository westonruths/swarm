// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function building_costs(_wood, _stone) constructor
{
    original_costs = [_wood, _stone]
	costs = [_wood, _stone]

    static done = function()
    {
        for (var i=0;i<array_length_1d(costs);i++) {
			if costs[i] > 0 { return false }
		}
		
		return true
    }
	
	static new_cost = function()
	{
		return new building_costs(original_costs[0], original_costs[1])
	}
	
	static reduce_cost = function(item_holding)
	{
		if (item_holding.object_index == obj_wood) {
			costs[0] -= 1
		}
		
		if (item_holding.object_index == obj_stone) {
			costs[1] -= 1
		}
	}
	
	static needed = function(haul_target)
	{
		if (haul_target.object_index == obj_wood) && (costs[0] > 0) {
			return true
		}
		
		if (haul_target.object_index == obj_stone) && (costs[1] > 0) {
			return true
		}
		
		return false
	}
		
	
}