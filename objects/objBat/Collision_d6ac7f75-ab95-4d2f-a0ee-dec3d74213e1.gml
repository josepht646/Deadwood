healthValue = healthValue - obj_characterInfo.mainDamage;
sprite_index = sprBatDamage;
alarm_set(0,5);
audio_play_sound(enemyImpact2,1,false);