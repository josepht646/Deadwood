/// @description Insert description here
// You can write your code in this editor
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
obj_menu.player_created = true;
x = 560;
y = 1184;
weapon = 0;
fighting = 0;
obj_characterInfo.xp = 0;
obj_characterInfo.level = 0;
obj_characterInfo.hp = 0;
obj_characterInfo.hpLvl = 0;
obj_characterInfo.lvlUpCost = 100;
obj_characterInfo.meleeDamage = 0;
obj_characterInfo.mainDamage = 0;
obj_characterInfo.attackDelay = -1;
image_angle = 0;
audio_stop_all();
audio_play_sound(lostInForest,1,true);