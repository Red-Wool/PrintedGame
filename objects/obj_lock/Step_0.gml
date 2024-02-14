/// @description Insert description here
// You can write your code in this editor

if (instance_place(x,y,GUYDE) and global.got_key)
{
	audio_play_sound(chest_open,1,false,10)
	instance_destroy(self)	
}
