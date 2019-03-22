/// @description Insert description here
// You can write your code in this editor
spd = 4;
weapon = 0;
fighting = 0;
attackDelay = 100;
obj_menu.player_created = true;
if (obj_characterInfo.character == 1) {
	sprite_index = sprArcher;
}

if (obj_characterInfo.character == 2) {
	sprite_index = sprKnight;
	attackDelay = 50;
}

if (obj_characterInfo.character == 3) {
	sprite_index = sprWizard;
}

previousRoom = room;