/// @desc Control Menu

//Item ease in

menu_y = menu_y_target;//+= (menu_y_target - menu_y) / menu_speed;
menu_alpha += 0.005;
draw_set_alpha(menu_alpha);
//Keyboard Controls
if(menu_control){
	if(keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if(menu_cursor >= menu_items) menu_cursor = 0;
	}
	if(keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}
}

if(menu_committed != -1){
	switch(menu_committed){
		case 2: fadeToRoom(rGame, 60, c_black); break;
		case 1: fadeToRoom(rInstruct, 40, c_black); break;
		case 0: game_end(); break;
	}
	
}
