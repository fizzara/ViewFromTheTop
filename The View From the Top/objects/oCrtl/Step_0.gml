/// @desc 

if(keyboard_check_pressed(vk_escape)){
	if(room == rMenu) game_end(); //else fadeToRoom(rMenu, 60, c_black);
	if(room == rInstruct) fadeToRoom(rMenu, 30, c_black);
}

if(keyboard_check_pressed(ord("F"))){
	if(window_get_fullscreen()) window_set_fullscreen(false); else window_set_fullscreen(true);
}

if(keyboard_check_pressed(vk_delete)) game_end();
/*

if(instance_exists(oPause)){
	if(keyboard_check_pressed(vk_escape)){
		fadeToRoom(rMenu, 60, c_black);
	}
	if(keyboard_check_pressed(vk_anykey)){
		instance_destroy(oPause);	
	}
}

if(room == rGame) && (keyboard_check_pressed(vk_escape)){
	if(!instance_exists(oPause)){
		instance_create_depth(0, 0, -999, oPause);
	}
}*/
