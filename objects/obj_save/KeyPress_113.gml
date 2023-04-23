///@description Load Game
#region Criptografado
	var save = "save.leo"
	if(file_exists(save))
	{
		ini_open(save)
		
			var _life = ini_read_string("Player", "Life", 0)
			var _room = ini_read_string("Player", "Room", 0)
			var _x = ini_read_string("Player", "X_Atual", 0)
			var _y = ini_read_string("Player", "Y_Atual", 0)
		
			_life = real(base64_decode(_life))
			_room = real(base64_decode(_room))
			_x = real(base64_decode(_x))
			_y = real(base64_decode(_y))
		
			room_goto(_room)
			obj_player.life = _life
			obj_player.x = _x
			obj_player.y = _y
		
		ini_close()
	}
#endregion

#region Normal
	/*
	var save = "save.leo"
	if(file_exists(save))
	{
		ini_open(save)
	
			obj_player.y = ini_read_real("Player", "Y_Atual", 0)
			obj_player.x = ini_read_real("Player", "X_Atual", 0)
			obj_player.life = ini_read_real("Player", "Life", 0)
			room_goto(ini_read_real("Player", "Room", 0))
	
		ini_close()
	}
	*/
#endregion