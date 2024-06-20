/// @desc 


if (keyboard_check_pressed(ord("P"))){
	paused = !paused;
	if(!paused){
	    instance_activate_all();
	}else{
		instance_deactivate_all(true);
	}
}

if(paused) && (keyboard_check_pressed(vk_escape)){
	fadeToRoom(rMenu, 60, c_black);	
}

