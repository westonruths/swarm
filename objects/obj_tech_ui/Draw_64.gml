/// @description Insert description here
// You can write your code in this editor

//draw dependencies
if (techstatus == 0) { // set the colour of the line (black means they can unlock it, gray is still locked)
	draw_set_colour(c_gray)
} else {
	draw_set_colour(c_black)
}

for (var d=0; d<needcount; d++) // loop around all of the lines we have already cached and draw them
{
    draw_line_width(x+sprite_width/2,y+sprite_height/2,
					linetox[d]+sprite_width/2,linetoy[d]+sprite_height/2,2)
};

switch(techstatus) {
	case 0:
		sprite_index = spr_w_box
		image_blend = c_gray
	break;
	
	case 1:
		sprite_index = spr_lt_box
		image_blend = noone
	break;
	
	case 2:
		sprite_index = spr_lt_box
		image_blend = c_lime
	break;
}

image_xscale = 5
image_yscale = 5

draw_self();

draw_sprite_ext(techsprite, image_index, x+sprite_width/2, y+sprite_height/2, 1, 1, image_angle, image_blend, image_alpha)

draw_set_font(fnt_btn)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)
draw_set_color(c_black);

var resource_x = 10
var resource_y = 37

for (var p=0; p<techpoints; p++) {
	draw_sprite_ext(spr_tech_point, image_index, x+resource_x+p*5, y + resource_y, 1, 1, image_angle, image_blend, image_alpha)
}



