/// @description Hourly mood adjustment

mood = mood_base

for(var i=0; i<array_length(thought); i++) {
	if thoughtactive[i] == 1 && thoughttimer[i] > 0 {
		thoughttimer[i] -= 1
		
		mood += thoughteffect[i]
	}
	
	if thoughttimer[i] == 0 {
		thoughtactive[i] = 0
		thoughttimer[i] = thoughttimero[i]
	}
	
}