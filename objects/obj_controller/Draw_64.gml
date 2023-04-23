if(global.pause)
{
	var _x = VIEW_WIDTH * VIEW_SCALE
	var _y = VIEW_HEIGHT * VIEW_SCALE
	draw_set_color(c_black)
	draw_set_alpha(.5)
	
	draw_rectangle(0, 0, _x, _y, 0)
	
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_set_font(fnt_pause)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	draw_text_transformed(_x/2, _y/2 - 50, "JOGO PAUSADO", 2, 2, 0)
	
	draw_set_font(-1)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}