/// @description Insert description here
// You can write your code in this editor

if sprite_index == spr_goblin_dead { 
	image_index = image_number-1
	exit 
}


if sprite_index != spr_goblin_attack { exit }

var attackRoll = irandom_range(1, 100);

if (attackRoll <= accuracy){
   //Successful attack
   var damage = irandom_range(1, strength);
   print("Goblin lands a strike, dealing ", damage, " damage!")
   with(hunt_target) {
		hp -= damage
   }
}else{
    //Unsuccessful attack
	print("Goblin misses!")
}

