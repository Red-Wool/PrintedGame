/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space) and instance_place(x,y,GUYDE))
{
	audio_play_sound(Boom,1,false,10)
	text_box.reset_textbox()
	
	if (global.coupon_knowledge)
		goto_car = true
}
if (!instance_place(x,y,GUYDE))
{
	text_box.close_textbox()
}

if (text_box)
{
	if (do_override)
	{
		text_box.display_text = override_text
	}
	else if (global.coupon_knowledge)
	{
		text_box.display_text = "Woah, now THAT is a deal. Get in the car, we gotta get it NOW!"
		
	}
	else if (global.got_key)
	{
		text_box.display_text = "Nice I can now waste paper."
	}
	else
	{
		text_box.display_text = "What the hell? The printer got jammed again! AUUUUUUHHhhhhh, Can you get the Unjammer on my right? I'm too lazy to walk."
	}
}

if (goto_car)
{
	timer += 1
	
	if (timer > 300)
	{
		y += 3;
	}
}