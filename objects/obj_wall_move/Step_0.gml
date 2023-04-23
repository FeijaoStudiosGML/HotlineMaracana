if(global.pause)exit

if(horizontal)
{
	velh = move_dir * move_spd

	var _col = place_meeting(x + velh, y, obj_wall)
					or place_meeting(x + velh, y, obj_wall_move_col)
	if(_col)
	{
		move_dir *= -1
	}

	#region Colisão Player
		var _player = place_meeting(x + sign(velh), y, obj_player)
							or place_meeting(x, y - 1, obj_player)

		if(_player)
		{
			with(obj_player)
			{
				if(!place_meeting(x + other.velh, y, obj_wall))
				{
					x += other.velh
				}
			}
		}
	#endregion

	x += velh
}

else
{
	velv = move_dir * move_spd

	var _col = place_meeting(x, y + velv, obj_wall)
					or place_meeting(x, y + velv, obj_wall_move_col)
	if(_col)
	{
		move_dir *= -1
	}

	#region Colisão Player
		var _player = place_meeting(x, y + 1, obj_player)
							or place_meeting(x, y - 1, obj_player)
		if(_player)
		{
			with(obj_player)
			{
				y += other.velv
			}
		}
	#endregion

	y += velv
}