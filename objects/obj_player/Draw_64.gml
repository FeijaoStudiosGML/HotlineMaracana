if(global.pause)
{
	exit
}
draw_set_font(fnt_pause)
draw_text(20, 20, "MUNICAO: " + string(ammo))
draw_set_font(-1)