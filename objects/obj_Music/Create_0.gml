/// @description Insert description here
// You can write your code in this editor
audio_play_sound(lostInForest, 1, true);
if(room == room_boss){
	audio_stop_sound(lostInForest);
	audio_play_sound(bossFightTheme,1,true);
}