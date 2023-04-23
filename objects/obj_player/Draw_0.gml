if(global.debug)
{
	draw_self()
}
draw_sprite_ext(
								spr,
								image_index,
								x,
								y,
								.6,
								.6,
								rot,
								image_blend,
								image_alpha
							 )
draw_lifebar(max_life, life)

draw_text(x, y-50, gun)