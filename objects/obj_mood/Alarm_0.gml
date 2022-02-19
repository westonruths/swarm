/// @description Hourly mood adjustment

mood_goal = mood_base

for(var i=0; i<array_length(thought); i++) {
	if thoughtactive[i] == 1 && thoughttimer[i] > 0 {
		thoughttimer[i] -= 1
		
		mood_goal += thoughteffect[i]
		
		caption = thoughtcaption[i]
	}
	
	if thoughttimer[i] == 0 {
		thoughtactive[i] = 0
		thoughttimer[i] = thoughttimero[i]
	}	
}

if mood > mood_goal { mood -= 2 }

if mood < mood_goal { mood += 2 }