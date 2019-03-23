/// @description Insert description here
// You can write your code in this editor
if(objPlayer.previousRoom == room_tutorial){
	room_goto(room_tutorial);
	objPlayer.x = 560;
	objPlayer.y = 1184;
}
else{
	room_goto(room_town);
	objPlayer.x = 2800;
	objPlayer.y = 2400;
}
obj_characterInfo.hp = 100;