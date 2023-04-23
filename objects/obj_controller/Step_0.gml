var key_pause		= keyboard_check_released(ord("P"))
var key_restart		= keyboard_check_released(ord("R"))
var key_exit			= keyboard_check_released(vk_escape)
var key_debug		= keyboard_check_released(ord("Z"))

if(key_pause)
{
	global.pause = !global.pause
}

if(key_restart)
{
	game_restart()
}

if(key_exit)
{
	game_end()
}

if(key_debug)
{
	global.debug = !global.debug
}