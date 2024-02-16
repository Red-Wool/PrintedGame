/// @description Insert description here
// You can write your code in this editor

timer = 0.
text_timer = 0
total_timer = 0

current_text = ""
text_index = 0
end_index = string_length(display_text)

is_opening = false

dist = sin(timer*.03)*15+15
move_mult = .1

function calc_x( _t = 0.)
{
	return (x + sin(_t * move_mult) * dist - 100)
}

function calc_y( _t = 0.)
{
	return (y + cos(_t * move_mult) * dist - 128)
}

function calculate_scale(_t = 0.)
{
	_t = clamp(_t*.02,0,1)
	return (_t*_t)*(3-2*_t)
}

function reset_textbox()
{
	timer = max(timer, 0)
	if (!is_opening)
	{
		text_timer = 0
		current_text = ""
		text_index = 1
		end_index = string_length(display_text)
	}
	is_opening = true
}

function close_textbox()
{
	timer = min(timer, 100)
	is_opening = false
}

display_width = sprite_get_width(spr_textback)
str_height = string_height(display_text)