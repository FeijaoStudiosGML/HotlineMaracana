///@description Save Game
show_message("Jogo Salvo!")

#region Criptografado
	var save = "save.leo"
	if(file_exists(save))
	{
		file_delete(save)
	}

		ini_open(save)
		
			var _life = base64_encode(string(obj_player.life))
			var _room = base64_encode(string(room))
			var _x = base64_encode(string(obj_player.x))
			var _y = base64_encode(string(obj_player.y))
		
			ini_write_string("Player", "Y_Atual", _y)
			ini_write_string("Player", "X_Atual", _x)
			ini_write_string("Player", "Room", _room)
			ini_write_string("Player", "Life", _life)
		
		ini_close()
#endregion

#region Normal
	/*
	var save = "save.leo"
	if(file_exists(save))	file_delete(save)

	ini_open(save)

		ini_write_real("Player", "Y_Atual", obj_player.y)
		ini_write_real("Player", "X_Atual", obj_player.x)
		ini_write_real("Player", "Room", room)
		ini_write_real("Player", "Life", obj_player.life)

	ini_close()
	*/
#endregion