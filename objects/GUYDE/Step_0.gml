/// @description Insert description here
// You can write your code in this editor


//Input
if (keyboard_check(vk_right))
{
	accel_x += accel
}
if (keyboard_check(vk_up))
{
	accel_y -= accel
}
if (keyboard_check(vk_left))
{
	accel_x -= accel
}
if (keyboard_check(vk_down))
{
	accel_y += accel
}

//Collision
if (place_meeting(x + 1 + accel_x,y,collision_list))
{
	x -= (1 + accel_x)
	accel_x = -.1
}
if (place_meeting(x - 1 - accel_x,y,collision_list))
{
	x += 1 + accel_x
	accel_x = .1
}

if (place_meeting(x,y+1+accel_y,collision_list))
{
	y -= (1 + accel_y)
	accel_y = -.1
}
if (place_meeting(x,y-1-accel_y,collision_list))
{
	y += 1 + accel_y
	accel_y = .1
}

//Set Sprite
image_speed = sqrt(power(accel_x,2)+power(accel_y,2))*.5
if (abs(accel_x) >= abs(accel_y))
{
	
	if (accel_x > 0)
	{
		sprite_index = spr_print_person_hor_r
	}
	else
	{
		sprite_index = spr_print_person_hor_l
	}
}
else
{
	
	if (accel_y > 0)
	{
		sprite_index = spr_print_person_down
	}
	else
	{
		sprite_index = spr_print_person_up
	}
}

//Move Player
x += accel_x
y += accel_y
accel_x *= decay
accel_y *= decay


//Camera Work
cam_lerp_x = lerp(cam_lerp_x, x-window_get_width()/2+accel_x*30, .03)
cam_lerp_y = lerp(cam_lerp_y, y-window_get_height()/2+accel_y*30, .03)

camera_set_view_pos(view_camera[0], cam_lerp_x, cam_lerp_y)