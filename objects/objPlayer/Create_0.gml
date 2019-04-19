spd = 4;
weapon = 0;
fighting = 0;
attackDelay = 100;
obj_menu.player_created = true;
if (obj_characterInfo.character == 1) {
	sprite_index = sprArcher;
	obj_characterInfo.hp = 100;
	obj_characterInfo.hpLvl = 100;
	obj_characterInfo.mainDamage = 5;
	obj_characterInfo.meleeDamage = 2;
}

if (obj_characterInfo.character == 2) {
	sprite_index = sprKnight;
	attackDelay = 25;
	obj_characterInfo.hp = 150;
	obj_characterInfo.hpLvl = 150;
	obj_characterInfo.mainDamage = 7;
	obj_characterInfo.meleeDamage = 3;
}


if (obj_characterInfo.character == 3) {
	sprite_index = sprWizard;
	obj_characterInfo.hp = 75;
	obj_characterInfo.hpLvl = 75;
	obj_characterInfo.mainDamage = 10;
	obj_characterInfo.meleeDamage = 1;
}

previousRoom = room;
counter = 0;