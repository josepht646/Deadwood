if (movement == true) {
	if (sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) < 500) {
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y) - 90;
		mp_potential_step_object(objPlayer.x,objPlayer.y,batSpeed,obj_deadTree);
	}
} else {
	playerdirection = point_direction(x,y,objPlayer.x,objPlayer.y)
    direction = playerdirection+180
	speed = 1;
}

if (healthValue <= 0) {
	obj_characterInfo.xp+=10;
	
	instance_destroy();
}