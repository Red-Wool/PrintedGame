/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left))
{
	accel_x -= accel;	
}

if (keyboard_check(vk_right))
{
	accel_x += accel;	
}

if (place_meeting(x,y,death_collision))
{
	death()
}

image_speed = 1 + abs(accel_x * .2)

x += accel_x
accel_x	*= decay

y += 10

cam_lerp_y = lerp(cam_lerp_y, y-window_get_height()/2, .1)
camera_set_view_pos(view_camera[0], 0, cam_lerp_y+300)