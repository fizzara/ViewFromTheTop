/// @desc Enter/Exit Fade

if(state == 0){
	timer++;
	if(timer >= duration){
		state = 1;
		room_goto(targetRoom);
	}
}else if(state == 1){
	timer--;
	if(timer <= 0){
		instance_destroy();	
	}
}

alpha = timer/duration;

