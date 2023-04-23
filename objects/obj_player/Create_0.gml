enum GUNS
{
	hand,
	pistol,
	silencer,
	machine,
	height
}

event_inherited()
vel = 2
max_life = 100
life = max_life
damage = false
timer = room_speed * 2
hold = false
ammo = 0
gun = GUNS.hand
spr = spr_player_hand