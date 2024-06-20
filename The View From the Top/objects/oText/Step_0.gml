/// @desc Progress Text

letters += spd;
text_current = string_copy(text, 1, floor(letters));

draw_set_font(fSign);
if(h == 0) h = string_height(text);
w = string_width(text_current);

//Destroy when done
if(!place_meeting(x,y,oPlayer)) && (letters >= length){
	instance_destroy();
	with(oCamera) follow = oPlayer;
}
