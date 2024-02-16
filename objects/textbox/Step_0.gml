/// @description Insert description here
// You can write your code in this editor

timer += is_opening ? 1 : -3

total_timer += 1
dist = sin(total_timer*.03)*15+15

if (end_index > string_length(current_text) and is_opening)
{
	text_timer += 1
	if (text_timer >= text_speed)
	{
		text_timer = 0
		
		var _next_char = string_char_at(display_text, text_index)
		
		if _next_char != " "
			audio_play_sound(text_sound,1,false,10)
		
		current_text += _next_char
		text_index += 1	
	}
}