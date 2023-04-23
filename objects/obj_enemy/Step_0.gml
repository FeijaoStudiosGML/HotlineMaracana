event_inherited();

if(global.pause)
{
	exit
}
	
var _line = collision_line(x, y, obj_player.x, obj_player.y, obj_player, false, false)
if(_line)
{
	var _wall = collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false)
	var _player = distance_to_object(obj_player) <= eye
		
	if(!_wall and _player)
	{
		image_angle=point_direction(x,y,obj_player.x,obj_player.y)
		image_blend = c_red
	}
	else
	{
		image_blend = c_white
	}
}

if(life <= 0)
{
	instance_destroy()
}