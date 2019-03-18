//Make object visable
depth = -100;

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
<<<<<<< HEAD
if (fighting == 0 && mouse_check_button_pressed(mb_left) && weapon == 1) {
	if (obj_characterInfo.character == 1) {
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
		fighting = 1;
		alarm_set(0,obj_characterInfo.attackDelay);
		var delta_x = 50; //70
		var delta_y = 33;
		var angle = point_direction(0, 0, delta_x, delta_y);
		var distance = point_distance(0, 0, delta_x, delta_y);
		var xpos = x + lengthdir_x(distance, image_angle + angle);
		var ypos = y + lengthdir_y(distance, image_angle + angle);
		instance_create_layer(xpos,ypos,"Instances",obj_weaponAnimation);
=======
if (fighting == 0 && mouse_check_button(mb_left) && weapon == 1) {
	if (obj_characterInfo.character == 1) {
		fighting = 1;
		instance_create_layer(x,y,"Instances",obj_weaponAnimation);
>>>>>>> 9bf3aba142072a2aae7decfe26f0922323234d87
	}
}