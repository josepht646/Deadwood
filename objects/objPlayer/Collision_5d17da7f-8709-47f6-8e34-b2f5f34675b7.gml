if (counter > 64) {
	audio_play_sound(playerDamage,1,false);
	obj_characterInfo.hp = obj_characterInfo.hp - 10;
	counter = 0;
}
if(obj_characterInfo.hp < 2 && room != deathRoom){
	previousRoom = room;
	room_goto(deathRoom);
}
