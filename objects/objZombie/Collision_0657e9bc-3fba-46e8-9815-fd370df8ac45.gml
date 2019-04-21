healthValue = healthValue - obj_characterInfo.mainDamage;
sprite_index = sprZombieDamage;
audio_play_sound(enemyImpact2,1,false);
alarm_set(0,5);