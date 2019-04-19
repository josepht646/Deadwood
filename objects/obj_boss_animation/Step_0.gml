counter++;

if (obj_boss_fight.phase == 2) {
	image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
	mp_potential_step_object(objPlayer.x,objPlayer.y,2,obj_brick);
}

if (obj_boss_fight.phase == 5) {
	image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
	mp_potential_step_object(objPlayer.x,objPlayer.y,3.5,obj_brick);
}

if (obj_boss_fight.phase == 8) {
	image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);
	mp_potential_step_object(objPlayer.x,objPlayer.y,5,obj_brick);
}