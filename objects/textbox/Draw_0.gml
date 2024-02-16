/// @description Insert description here
// You can write your code in this editor







var _text_scale = calculate_scale(timer)

var _dif =6.
for (var _i = 3; _i >= 0; _i -= 1)
{
	draw_sprite_ext(spr_textback, 0, calc_x(timer - _dif * _i), calc_y(timer - _dif * _i), calculate_scale(timer + _i * _dif * (is_opening ? -1 : 1)) , calculate_scale(timer + _i * _dif * (is_opening ? -1 : 1)), 0, c_white, 1-_i*.3)
}


draw_text_ext_transformed(calc_x(timer), calc_y(timer), current_text, str_height, display_width, _text_scale, _text_scale, 0)