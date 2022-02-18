/// @description Insert description here
// You can write your code in this editor

mood = 50
mood_base = 50
mood_max = 100

enum mood_thoughts {
	slept_outside,
	slept_ground,
	ate,
	starving,
}

var i = 0
thought[i] = "Slept outside"
thoughtcaption[i] = "I'd really like to sleep inside"
thoughteffect[i] = -5 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 6 //thought counter
thoughttimero[i] = 6 //number of hours thought lasts

i = 1
thought[i] = "Slept on the ground"
thoughtcaption[i] = "I'd really like a bed"
thoughteffect[i] = -10 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 6 //thought counter
thoughttimero[i] = 6 //number of hours thought lasts

i = 2
thought[i] = "Recently ate"
thoughtcaption[i] = "Nice and full"
thoughteffect[i] = 10 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts

i = 3
thought[i] = "Starving"
thoughtcaption[i] = "I'm so hungry"
thoughteffect[i] = -10 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts

i = 4
thought[i] = "Low expectations"
thoughtcaption[i] = "It's a new world!"
thoughteffect[i] = 20 //how it effects the character's mood
thoughtactive[i] = 1 //0 is inactive, 1 is active
thoughttimer[i] = 48 //thought counter
thoughttimero[i] = 48 //number of hours thought lasts