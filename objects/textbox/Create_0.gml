/// @description Insert description here
// You can write your code in this editor

timer = 0.

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

display_width = sprite_get_width(spr_textback)
str_height = string_height(display_text)