if(global.pause)
{
	exit
}
event_inherited()

var key_left			=	keyboard_check	(ord("A"))
var key_right		=	keyboard_check	(ord("D"))
var key_up			=	keyboard_check	(ord("W"))
var key_down		=	keyboard_check	(ord("S"))
var key_hold			=	keyboard_check	(vk_space)
var key_shoot

velh	= (key_right - key_left) * vel
velv	= (key_down - key_up) * vel

gun = clamp(gun, 0, GUNS.height-1)

switch(gun)
{
	case GUNS.hand:
	{
		spr = spr_player_hand
		
		break;
	}
	
	case GUNS.pistol:
	{
		spr = spr_player_pistol
		
		key_shoot	=	mouse_check_button_pressed(mb_left)
		if(key_shoot and ammo > 0)
		{
			var _bullet = instance_create_layer(x, y, layer, obj_bullet)
			_bullet.speed = 8
			_bullet.direction = point_direction(x, y, mouse_x, mouse_y)
			
			audio_play_sound(snd_shoot, irandom_range(0, 5), 0)
			ammo--
		}
		
		break;
	}
	
	case GUNS.silencer:
	{
		spr = spr_player_silencer
		
		key_shoot	=	mouse_check_button_pressed(mb_left)
		if(key_shoot and ammo > 0)
		{
			var _bullet = instance_create_layer(x, y, layer, obj_bullet)
			_bullet.speed = 8
			_bullet.direction = point_direction(x, y, mouse_x, mouse_y)
			
			audio_play_sound(snd_shoot_silencer, irandom_range(0, 5), 0)
			ammo--
		}
		
		break;
	}
	
	case GUNS.machine:
	{
		spr = spr_player_machine
		
		//key_shoot	=	mouse_check_button(mb_left)
		//if(key_shoot and ammo > 0)
		//{
		//	var _bullet = instance_create_layer(x, y, layer, obj_bullet)
		//	_bullet.speed = 8
		//	_bullet.direction = point_direction(x, y, mouse_x, mouse_y)
			
		//	audio_play_sound(snd_shoot, irandom_range(0, 5), 0)
		//	ammo--
		//}
		
		break;
	}
}

if(ammo <= 0)
{
	gun = GUNS.hand
}

if(key_hold)
{
	hold = true
	vel = 2
}
else
{
	hold = false
	vel = 4
}

if(hold)
{
	spr = spr_player_hold
}

if(damage)
{
	image_alpha = .6
}
else
{
	image_alpha = 1
}