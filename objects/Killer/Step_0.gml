/// @description Insert description here
// You can write your code in this editor


if (instance_place(x,y,GUYDE))
{
	var _instance = instance_place(x,y,GUYDE)
	audio_play_sound(Jumpscare1,1,false,10)
	instance_destroy(_instance)	
}

if !place_free(x+32, y)
{
	show_debug_message("right rightt r")	
}

kill(1)

//show_debug_message(global.animals)