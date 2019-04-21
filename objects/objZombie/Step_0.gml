if (room != room_boss) {
	if (movement == true) {
		if (sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) < 550 && sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) > 64) {
			image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
			if(!audio_is_playing(zombieSnarls)){
				audio_play_sound(zombieSnarls, 1, true);
			}
			mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_deadTree);
		}
	} else {
		if (movement == true) {
			playerdirection = point_direction(x,y,objPlayer.x,objPlayer.y)
		    direction = playerdirection+180
			speed = 1;
		}
	}
} else {
	image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
	mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_deadTree);
}

if (healthValue <= 0) {
	obj_characterInfo.xp+=25;
	audio_stop_sound(zombieSnarls);
	if (room == room_boss) {
		obj_boss_fight.num_hits++;
	}
	instance_destroy();
}

if (healthValue < maxHealthValue) {
	if (movement == true) {
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
		if(!audio_is_playing(zombieSnarls)){
			audio_play_sound(zombieSnarls, 1, true);
		}
		mp_potential_step_object(objPlayer.x,objPlayer.y,enemySpeed,obj_deadTree);
	}
}
