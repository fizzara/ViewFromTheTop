/// @desc 

pause_width = display_get_gui_width()/2;
pause_height = display_get_gui_height()/2;
pause_font = fTitle;
poffset = 32;

paused = false;
paused_surf = -1;

pause[1] = "Yes";
pause[2] = "No";

pause_items = array_length_1d(pause);
pause_cursor = 2;
