/// @description Insert description here
// You can write your code in this editor

accel_x = 0
accel = .3
decay = .999

death_collision = [obj_tree]

cam_lerp_y = y-window_get_height()/2;

function death()
{
	instance_destroy(self)	
}