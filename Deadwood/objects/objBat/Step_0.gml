if (sqrt(power((objPlayer.y - y),2) + power((objPlayer.x-x),2)) < 400) {
	image_angle = point_direction(x,y,objPlayer.x,objPlayer.y) - 90;
	mp_potential_step_object(objPlayer.x,objPlayer.y,batSpeed,obj_deadTree);
}

if (healthValue <= 0) {
	instance_destroy();
}