if (room != room_boss) {
	if (movement == true) {
		if (sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) < 550 && sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) > 64) {
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			if (room = room_level_2) {
				mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_sand);	
			} else {
				mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_deadTree);
			}
		}
	} else {
		playerdirection = point_direction(x,y,objPlayer.x,objPlayer.y)
	    direction = playerdirection+180
		speed = 1;
	}
} else {
	if (movement == true) {
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		if (room = room_level_2) {
			mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed+0.5,obj_sand);	
		} else {
			mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed+0.5,obj_deadTree);
		}
	} else {
		playerdirection = point_direction(x,y,objPlayer.x,objPlayer.y)
		direction = playerdirection+180
		speed = 1;

	}
}

if (healthValue <= 0) {
	obj_characterInfo.xp+=50;
	if (room == room_boss) {
		obj_boss_fight.num_hits++;
	}
	instance_destroy();
}