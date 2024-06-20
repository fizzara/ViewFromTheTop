/// @desc 

draw_set_font(pause_font);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(#674b73);

x1 = pause_width - (pause_width/2);
y1 = pause_height - (pause_height/2);
x2 = pause_width + (pause_width/2);
y2 = pause_height + (pause_height/2);
if paused == true
{
/*if !surface_exists(paused_surf){
    if paused_surf == -1{
        instance_deactivate_all(true);
    }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
}else{*/
    //draw_set_alpha(0.5);
	draw_rectangle(x1, y1, x2, y2, false);
	//draw_surface(paused_surf, 0, 0);
    // draw_set_alpha(1);
	draw_set_color(c_black);
	draw_text(pause_width, y1+((y2-y1)/2), "Press ESC to return \n to the main menu");
}


//draw_text(pause_width, y1+(((y2-y1)/3)*2), "Press ESC to return to menu")
/*
for(var i = 0; i < pause_items; i++){
	
	var txt = pause[i];
	
	if(pause_cursor == i){
		txt = string_insert("- ", txt, 0);
		txt = string_insert(" -", txt, string_length(txt)+1)
		var col = c_white;
	}else var col = c_gray;
	/*
	var xx = pause_width
	var yy = pause_y - (pause_itemheight * (i * 1.5));
	
	draw_set_color(c_black);
	
	draw_text(xx-poffset, yy, txt);
	draw_text(xx+poffset, yy, txt);
	draw_text(xx, yy-poffset, txt);
	draw_text(xx, yy+poffset, txt);*//*
	draw_set_color(col);
	draw_text(pause_width-100, y1+(((y2-y1)/4)*3), txt);
	
}*/
