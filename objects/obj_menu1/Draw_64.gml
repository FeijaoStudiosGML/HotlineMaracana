draw_set_font(fnt_menu)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _mx = device_mouse_x_to_gui(0)
var _my = device_mouse_y_to_gui(0)
var _c

var tam = array_length(actions)
for(var i = 0; i < tam; i++)
{
	var _guiw = display_get_gui_width()
	var _guih = display_get_gui_height()
	
	var _strw = string_width(actions[i])
	var _strh = string_height("I")
	
	var _x1 =  _guiw/2 - (_strw/2)
	var _y1 = _guih/2 - (_strh/2) + (_strh * i)
	
	var _x2 =  _guiw/2 + (_strw/2)
	var _y2 = _guih/2 + (_strh/2) + (_strh * i)
	
	if(point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2))
	{
		_c = c_red
		scale[i] = lerp(scale[i], 1.3, .15)
		
		if(mouse_check_button_released(mb_left))
		{
			switch(actions[i])
			{
				case actions[0]:
					room_goto(rm_testes)
				break;
				
				case actions[1]:
					show_message("OPTIONS")
				break;
				
				case actions[2]:
					game_end()
				break;
			}
		}
	}
	else
	{
		_c = c_white
		scale[i] = lerp(scale[i], 1, .15)
	}
	
	draw_text_transformed_color(_guiw/2, _guih/2 + (_strh * i), actions[i], scale[i], scale[i], 0, _c, _c, _c, _c, 1)	
}
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(-1)

