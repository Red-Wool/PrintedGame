/// @description Insert description here
// You can write your code in this editor

if (global.coupon_knowledge)
{
	if ( instance_place(x,y,GUYDE))
	{
		var _player = instance_place(x,y,GUYDE)
		
		cam_lerp_x = _player.x-window_get_width()/2;
		cam_lerp_y = _player.y-window_get_height()/2;
		
		instance_destroy(_player)
		player_in_car = true
		
	}
	
	if ( instance_place(x,y,angry))
	{
		var _npc = instance_place(x,y,angry)
		instance_destroy(_npc)
	}
}

if (player_in_car)
{
	move_timer += 1
	
	if (move_timer > 250)
	{
		room_goto(Car)	
	}
	else if (move_timer > 100)
	{
		image_speed = move_timer/200
		y += 20
	}
	
}

cam_lerp_x = lerp(cam_lerp_x, x-window_get_width()/2, .1)
cam_lerp_y = lerp(cam_lerp_y, y-window_get_height()/2, .1)

camera_set_view_pos(view_camera[0], cam_lerp_x, cam_lerp_y)