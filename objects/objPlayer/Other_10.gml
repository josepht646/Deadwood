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
//x = 560;
//y = 1184;
image_angle = 0;