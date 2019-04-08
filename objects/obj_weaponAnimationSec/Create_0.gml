depth = -100;
moveSpeed = 8;

xLeft = x-480;
xRight = x+480;

yUp = y-270;
yDown = y+270;

if (obj_characterInfo.character == 1) {
	sprite_index = sprSwordAnimation;
	image_angle = objPlayer.image_angle;
	alarm_set(0,obj_characterInfo.attackDelay);
}
if (obj_characterInfo.character == 2) {
	sprite_index = sprSword;
	image_angle = objPlayer.image_angle;
}
if (obj_characterInfo.character == 3) {
	sprite_index = sprKnockback;
	image_angle = objPlayer.image_angle + 90;
	alarm_set(0,obj_characterInfo.attackDelay);
}