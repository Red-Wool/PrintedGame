/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) and instance_place(x,y,GUYDE))
{
	audio_play_sound(start_sound,1,false,10)
	//text_box.visible = true	
	text_box.reset_textbox()
	text_box.text_sound = text_sound
	
	if (knowledge)
	{
		global.coupon_knowledge = true;	
	}
}
if (!instance_place(x,y,GUYDE))
{
	//text_box.visible = false
	text_box.close_textbox()
}
