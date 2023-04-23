draw_self()
draw_lifebar(max_life, life)

if(!global.pause and global.debug)
{
	draw_line(x, y, obj_player.x, obj_player.y)
	draw_circle(x, y, eye, true)
}