if (movement == true) {
	if (sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) < 550 && sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) > 64) {
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_sand);
	}
} else {
	playerdirection = point_direction(x,y,objPlayer.x,objPlayer.y)
	direction = playerdirection+180
	speed = 1;
}

if (healthValue <= 0) {
	obj_characterInfo.xp+=75;
	
	instance_destroy();
}