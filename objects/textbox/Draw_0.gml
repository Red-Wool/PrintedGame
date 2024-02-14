/// @description Insert description here
// You can write your code in this editor









var _dif =6.
for (var _i = 3; _i >= 0; _i -= 1)
{
	draw_set_alpha(1-_i*.3)
	draw_sprite(spr_textback, 0, calc_x(timer - _dif * _i), calc_y(timer - _dif * _i))
}
draw_text_ext(calc_x(timer), calc_y(timer), display_text, str_height, display_width)