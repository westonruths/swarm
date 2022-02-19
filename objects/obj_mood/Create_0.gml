/// @description Insert description here
// You can write your code in this editor

mood = 50
mood_base = mood
mood_goal = mood
mood_max = 100

caption = ""

enum mood_thoughts {
	slept_outside,
	slept_ground,
	ate,
	starving,
	low_expectations,
	catharsis,
	pain,
	mental_break,
	exhausted,
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
thoughtcaption[i] = "I'm nice and full"
thoughteffect[i] = 10 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts

i = 3
thought[i] = "Starving"
thoughtcaption[i] = "I'm so hungry"
thoughteffect[i] = -30 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts

i = 4
thought[i] = "Low expectations"
thoughtcaption[i] = "Let's get to work!"
thoughteffect[i] = 15 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 48 //thought counter
thoughttimero[i] = 48 //number of hours thought lasts

i = 5
thought[i] = "Catharsis"
thoughtcaption[i] = "Feeling much better now"
thoughteffect[i] = 40 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 48 //thought counter
thoughttimero[i] = 48 //number of hours thought lasts

i = 6
thought[i] = "In Pain"
thoughtcaption[i] = "I'm bleeding!"
thoughteffect[i] = -20 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts

i = 7
thought[i] = "Mental Break"
thoughtcaption[i] = "Life is terrible!"
thoughteffect[i] = -50 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 12 //thought counter
thoughttimero[i] = 12 //number of hours thought lasts

i = 8
thought[i] = "Exhausted"
thoughtcaption[i] = "So tired..."
thoughteffect[i] = -5 //how it effects the character's mood
thoughtactive[i] = 0 //0 is inactive, 1 is active
thoughttimer[i] = 4 //thought counter
thoughttimero[i] = 4 //number of hours thought lasts