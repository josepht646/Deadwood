/// @description Insert description here
// You can write your code in this editor
obj_characterInfo.hp--;
if(obj_characterInfo.hp < 2 && room != deathRoom){
	previousRoom = room;
	room_goto(deathRoom);
}