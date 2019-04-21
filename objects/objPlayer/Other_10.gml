/// @description Insert description here
// You can write your code in this editor
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
obj_menu.player_created = true;
x = 560;
y = 1184;
weapon = 0;
fighting = 0;
obj_characterInfo.xp = 0;
obj_characterInfo.level = 0;
obj_characterInfo.lvlUpCost = 100;
obj_characterInfo.attackDelay = -1;
image_angle = 0;
audio_stop_all();
audio_play_sound(lostInForest,1,true);

global.mainQuestStage = stage_Tutorial;
global.sideQuestStage = sidestage_NotStarted;