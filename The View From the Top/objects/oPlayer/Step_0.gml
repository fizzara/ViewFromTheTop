 /// @desc Core Player Logic
//this will happen every frame

//Get player inputs
key_left = keyboard_check(vk_left); //keyboard_check == boolean
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up); //pressed checks if pressed on this frame (if was held down for the next frame it returns false)


//Calculate movement
var _move =  key_right - key_left;//var tag == yellow variable == local variable (this script only) ~ temp var naming convention:underscore at start
//True is also = to 1, False is also = to 0 ~~ if holding left but not right _move == -1; if holding right but not left, _move == 1

hsp = _move * walksp;

vsp = vsp + grv; //add gravity to vsp

//x = x + hsp;		 //x + walk cycle
//y = y + vsp;		 //y + gravity

if (place_meeting(x, y+1, oWall)) && (key_jump){ //if collision with ground (our location plus 1 square down) and pressing jump
	vsp = -jumpsp //vertical speed is equal to negative jump speed, which brings you up
}

//Horizontal collision
if(place_meeting(x + hsp, y, oWall)){ //seeing if at x, y our object would collide with third var/object (x + hsp == 1 walk cycle)
	
	while(!place_meeting(x+sign(hsp), y, oWall)){ //sign returns 1, 0, or -1 depending on its () value ~~ returns false if there is collision due to !, so if collision, break out
		
		x = x + sign(hsp); //while no collision, move to right or left depending on sign(hsp), and only move 1 so that we reach the wall flush, instead of having the walksp gap
	}
	hsp = 0;
}
x = x + hsp;

//Vertical collision ~~ same as horizontal but changed for vertical
if(place_meeting(x, y + vsp, oWall)){ 
	
	while(!place_meeting(x, y+sign(vsp), oWall)){ 
		
		y = y + sign(vsp); 
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if(!place_meeting(x, y+1, oWall)){ //if NOT touching floor
	sprite_index = sPlayerU;
	image_speed = 0;
	if (vsp > 0) sprite_index = sPlayerU; else sprite_index = sPlayerF; //if the vsp is positive set to falling image, else set to jumping image
}else{
	image_speed  = 1;
	if(hsp == 0){
		sprite_index = sPlayer; //set to standing sprite
	}else{
		sprite_index = sPlayerR; //set to running sprite	
	}
}

if(hsp != 0) image_xscale = sign(hsp); //image direction depends on if hsp is pos or neg

if(y > room_height){
	fadeToRoom(rGame, 30, c_black);
}
