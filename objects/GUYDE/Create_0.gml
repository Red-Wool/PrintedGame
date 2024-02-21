/// @description Insert description here
// You can write your code in this editor

suko = 4
global.animals = suko

accel = .1
decay = .99
accel_x = 0
accel_y = 0

collision_list = [obj_wall, obj_lock, obj_cart]

cam_lerp_x = x-window_get_width()/2
cam_lerp_y = y-window_get_height()/2

camera_set_view_pos(view_camera[0], cam_lerp_x, cam_lerp_y)
//speed = 10


