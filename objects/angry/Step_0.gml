/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) and instance_place(x,y,GUYDE))
{
	audio_play_sound(Boom,1,false,10)
	text_box.visible = true	
}
if (!instance_place(x,y,GUYDE))
{
	text_box.visible = false
}



if (text_box)
{
	if (global.got_key)
	{
		text_box.display_text = "Nice I can now waste paper."
	}
	else
	{
		text_box.display_text = "What the hell? The printer got jammed again! AUUUUUUHHhhhhh, Can you get the Unjammer on my right? I'm to lazy to walk."
	}
}
