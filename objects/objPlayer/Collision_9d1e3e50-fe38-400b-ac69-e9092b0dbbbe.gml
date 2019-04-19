x = xprevious;
y = yprevious;

if (counter > 64) {
	obj_characterInfo.hp = obj_characterInfo.hp - 100;
	counter = 0;
}
if(obj_characterInfo.hp < 2 && room != deathRoom){
	previousRoom = room;
	room_goto(deathRoom);
}