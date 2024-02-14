/// @description Insert description here
// You can write your code in this editor

if (instance_place(x,y,GUYDE))
{
	global.got_key = true
	audio_play_sound(wow,1,false,10)
	//audio_play_sound(Jumpscare1,1,false,10)
	instance_destroy(self)	
}
