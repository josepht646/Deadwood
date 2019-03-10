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
if (fighting == 0 && mouse_check_button(mb_left) && weapon == 1) {
	if (obj_characterInfo.character == 1) {
		fighting = 1;
		instance_create_layer(x,y,"Instances",obj_weaponAnimation);
	}
}