//Make object visable
depth = -100;
if (obj_menu.player_created == false) {
	event_user(0);
}
//Move character with animation
sprite_set_speed(sprite_index,0,spritespeed_framespersecond);
if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
	x-=spd;
	sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
}
if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
	x+=spd;
	sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
}
if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
	y-=spd;
	sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
}
if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
	y+=spd;
	sprite_set_speed(sprite_index,15,spritespeed_framespersecond);
}
//Have character follow mouse
image_angle = point_direction(x,y,mouse_x,mouse_y);

//Have character fight
if (fighting == 0 && mouse_check_button_pressed(mb_left) && weapon == 1) {
	if (obj_characterInfo.character == 1) {
		audio_play_sound(crossbowFire,1, false);
		fighting = 1;
		sprite_index = sprArcherWCBR;
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 45;
		var delta_y = 30;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimation);
	}
	if (obj_characterInfo.character == 2) {
		audio_play_sound(swordSwing,1, false);
		fighting = 1;
		sprite_index = sprKnight
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 30;
		var delta_y = 0;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimation);
	}
	if (obj_characterInfo.character == 3) {
		audio_play_sound(wizardSpell,1,false);
		fighting = 1;
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 50; //70
		var delta_y = 33;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimation);
	}
}

//Have character fight
if (fighting == 0 && mouse_check_button_pressed(mb_right) && weapon == 1) {
	if (obj_characterInfo.character == 1) {
		audio_play_sound(swordSwing,1, false);
		fighting = 1;
		sprite_index = sprArcher;
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 30;
		var delta_y = 00;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimationSec);
	}
	if (obj_characterInfo.character == 2) {
		audio_play_sound(swordSwing,1, false);
		fighting = 1;
		sprite_index = sprKnight
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 45;
		var delta_y = 30;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimationSec);
	}
	if (obj_characterInfo.character == 3) {
		audio_play_sound(wizardKnockBack,1,false);
		fighting = 1;
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 30;
		var delta_y = 0;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimationSec);
	}
}

if (keyboard_check_pressed(ord("N"))) {
	obj_characterInfo.xp+=100;
}

if (keyboard_check_pressed(ord("M"))) {
	global.mainQuestStage++;
}
//Health regeneration when in town
if(room == room_town and obj_characterInfo.hp<obj_characterInfo.hpLvl){
	counter2++;
	if(counter2 > 50){
		obj_characterInfo.hp++;
		counter2 = 0;
	}
}
if(room == room_town){
	if(audio_is_playing(zombieSnarls)){
		audio_stop_sound(zombieSnarls);
	}
	if(audio_is_playing(batSnarl)){
		audio_stop_sound(batSnarl);
	}
}
	

//Increment counter for enemy attacks
counter++;

if (attackDelay <= 5) {
	attackDelay = 5;	
}