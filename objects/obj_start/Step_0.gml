/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_space))
{
	global.got_key = false
	global.coupon_knowledge = false;
	room_goto(Game)	
}
if (keyboard_check(vk_left))
{
	global.got_key = false
	room_goto(BJ)	
}
if (keyboard_check(vk_right))
{
	global.got_key = false
	room_goto(Car)	
}