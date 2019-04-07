stage = 1;
player_created = true;
if (room = room_menu) {
	player_created = false;
	xPos = room_width/2-40;
	yPos = 225;
}

if (room = room_selection) {
	player_created = false;
	xPos = 250;
	yPos = 650;
}