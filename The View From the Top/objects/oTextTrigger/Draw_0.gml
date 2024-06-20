/// @desc 

if(place_meeting(x, y, oPlayer)) drawIt = true;

if(drawIt){
	
	xVal -= sped;

	draw_set_colour(c_white);
	draw_set_font(fLarge);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	draw_text(xVal, yVal, textL);
}

if(xVal <= 0){
	drawIt = false;
	instance_destroy();
}
 /*
if (xVal == x - camera_get_view_width(view_camera[0])){
	drawIt = false;	
}
