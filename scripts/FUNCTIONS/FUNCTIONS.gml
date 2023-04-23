function approach(){
	///@args val1 
	///@args val2 
	///@args amount
	
	if(argument[0] < argument[1])
	{
		argument[0] += argument[2]
		if(argument[0] > argument[1])
		{
			return argument[1]
		}
	}
	else
	{
		argument[0] -= argument[2]
		if(argument[0] < argument[1])
		{
			return argument[1]
		}
	}
	
	return argument[0]
}

function draw_lifebar()
{
	///@arg max_life
	///@arg life

	var _xx = x-32
	var _yy = y-32
	var _tamW = 64
	var _width = _xx+_tamW
	var _height = _yy+5
	var _c = c_red
	
	if(!global.pause)
	{
		draw_rectangle_color(_xx,_yy,_width,_height,_c,_c,_c,_c,0)
	
		_c = c_green
		_width = _xx+((argument[1]/argument[0])*_tamW)
		_height = _yy+5
		draw_rectangle_color(_xx,_yy,_width,_height,_c,_c,_c,_c,0)
	}
}