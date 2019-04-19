if (camera_change) {
	if (view_x > set_x) {
		view_x = view_x - 12;
	}
	if (view_y > set_y) {
		view_y = view_y - 10;
	}
	if ((view_x <= set_x) && (view_y <= set_y)) {
		camera_change = false;
		display_gui = false;
		view_x = set_x;
		view_y = set_y;
		phase++;
	}
	camera_set_view_size(view_camera[0], view_x, view_y);
}

if (phase == 1) {
	
	if (num_hits >= 5) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
		instance_destroy(obj_warning);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 50;
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", obj_warning);
	}
	
}

if (phase == 2) {
	
	if (num_hits >= 5) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 100;
		
		instance_create_layer(obj_boss.x, obj_boss.y, "Instances", obj_boss_animation);
	}
	
}

if (phase == 3) {
	
	if (num_hits >= 15) {
		phase++;
		num_hits = 0;
		instance_destroy(objBat);
		instance_create_layer(1550, 650, "Instances", obj_boss);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 100;
		
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", objBat);
	}
	
}

if (phase == 4) {
	
	if (num_hits >= 9) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
		instance_destroy(obj_warning);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 25;
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", obj_warning);
	}
	
}

if (phase == 5) {
	
	if (num_hits >= 9) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 100;
		
		instance_create_layer(obj_boss.x, obj_boss.y, "Instances", obj_boss_animation);
	}
	
}

if (phase == 6) {
	
	if (num_hits >= 15) {
		phase++;
		num_hits = 0;
		instance_destroy(objZombie);
		instance_create_layer(1550, 2500, "Instances", obj_boss);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 100;
		
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", objZombie);
	}
	
}

if (phase == 7) {
	
	if (num_hits >= 18) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
		instance_destroy(obj_warning);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 15;
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", obj_warning);
	}
	
}

if (phase == 8) {
	
	if (num_hits >= 18) {
		phase++;
		num_hits = 0;
		instance_destroy(obj_boss_animation);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 50;
		
		instance_create_layer(obj_boss.x, obj_boss.y, "Instances", obj_boss_animation);
	}
	
}

if (phase == 9) {
	
	if (num_hits >= 15) {
		phase++;
		num_hits = 0;
		instance_destroy(objDemonKnight);
	}
	
	if (can_attack) {
		can_attack = false;
		alarm[1] = 150;
		
		random_x = random_range(650, 2500);
		random_y = random_range(400, 2700);
		
		instance_create_layer(random_x, random_y, "Instances", objDemonKnight);
	}
	
}