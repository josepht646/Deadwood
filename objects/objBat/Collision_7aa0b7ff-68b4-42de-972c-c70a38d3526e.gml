healthValue = healthValue - obj_characterInfo.meleeDamage;
sprite_index = sprBatDamage;
alarm_set(0,5);

if (obj_characterInfo.character == 3) {
		movement = false;
		alarm_set(1,75);
}