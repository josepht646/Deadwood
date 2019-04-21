obj_boss_fight.num_hits++;
obj_characterInfo.xp+=10;
audio_play_sound(enemyImpact2,1,false);
instance_destroy(other);
instance_destroy();