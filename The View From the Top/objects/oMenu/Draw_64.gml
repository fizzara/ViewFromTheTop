/// @desc Draw Menu

draw_set_font(fTitle);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var offset = 2;
draw_set_color(c_black);
var tit_locx = gui_width/2;
var tit_locy = gui_height/3;
draw_text(tit_locx, tit_locy-offset, title);
draw_text(tit_locx-offset, tit_locy, title);
draw_text(tit_locx+offset, tit_locy, title);
draw_text(tit_locx, tit_locy+offset, title);
draw_set_color(c_white);
draw_text(tit_locx, tit_locy, title);

draw_set_font(fMenu);

for(var i = 0; i < menu_items; i++){
	
	var txt = menu[i];
	
	if(menu_cursor == i){
		txt = string_insert("- ", txt, 0);
		txt = string_insert(" -", txt, string_length(txt)+1)
		var col = c_white;
	}else var col = c_gray;
	
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	
	draw_set_color(c_black);
	
	draw_text(xx, yy-offset, txt);
	draw_text(xx-offset, yy, txt);
	draw_text(xx+offset, yy, txt);
	draw_text(xx, yy+offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
	
}
