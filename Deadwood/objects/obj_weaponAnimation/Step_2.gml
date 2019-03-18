if (obj_characterInfo.character == 1 || obj_characterInfo.character == 3) {
	x += lengthdir_x(moveSpeed, image_angle-90);
	y += lengthdir_y(moveSpeed, image_angle-90);
}

if (obj_characterInfo.character == 2) {
	var delta_x = 30;
	var delta_y = 0;
	var angle = point_direction(0, 0, delta_x, delta_y);
	var distance = point_distance(0, 0, delta_x, delta_y);
	x = objPlayer.x + lengthdir_x(distance, objPlayer.image_angle + angle);
	y = objPlayer.y + lengthdir_y(distance, objPlayer.image_angle + angle);
	image_angle = objPlayer.image_angle;
}