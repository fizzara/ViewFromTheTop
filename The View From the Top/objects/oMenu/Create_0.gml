/// @desc Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width/2; //xPos of menu
menu_y = gui_height;
menu_y_target = gui_height-(gui_height/4);
menu_alpha = 0;
menu_alpha_target = 1;
menu_speed = 105; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "How To Play";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;

title = "THE VIEW\n FROM THE TOP";

