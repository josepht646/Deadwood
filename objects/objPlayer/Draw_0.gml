draw_self();
//HUD code for displaying player stats
//Health Display
if (room != room_boss) {
	draw_sprite(spr_HealthBar,1, x - 100,y - 250);
	draw_sprite(spr_HealthBorder,1, x - 100,y - 250);
	//XP/Level Display
	draw_sprite(spr_XP1, 1, x-160, y-205);
	if(obj_characterInfo.xp >= obj_characterInfo.lvlUpCost){
		obj_characterInfo.xp = 0;
		obj_characterInfo.level++;
		obj_characterInfo.hpLvl +=10;
		obj_characterInfo.hp = obj_characterInfo.hpLvl;
		obj_characterInfo.mainDamage++;
		obj_characterInfo.meleeDamage++;
		obj_characterInfo.lvlUpCost += 20;
		attackDelay -= 5;
	}
	draw_sprite_ext(spr_HealthBar1, 1, x - 100,y - 250, obj_characterInfo.hp/obj_characterInfo.hpLvl,1, 0, c_white, 1);
	draw_sprite_ext(spr_XP, 1, x - 160,y - 205, 1,obj_characterInfo.xp/obj_characterInfo.lvlUpCost, 0, c_white, 1);
	draw_set_color(c_white);
	draw_text(x - 140,y - 250,string(obj_characterInfo.level));
} else {
	if (!obj_boss_fight.display_gui) {
		draw_sprite(spr_HealthBar,1, x - 100,y - 250);
		draw_sprite(spr_HealthBorder,1, x - 100,y - 250);
		draw_sprite_ext(spr_HealthBar1, 1, x - 100,y - 250, obj_characterInfo.hp/obj_characterInfo.hpLvl,1, 0, c_white, 1);
		//XP/Level Display
		draw_sprite(spr_XP1, 1, x-160, y-205);
		if(obj_characterInfo.xp >= obj_characterInfo.lvlUpCost){
			obj_characterInfo.xp = 0;
			obj_characterInfo.level++;
			obj_characterInfo.hpLvl +=10;
			obj_characterInfo.hp = obj_characterInfo.hpLvl;
			obj_characterInfo.mainDamage++;
			obj_characterInfo.meleeDamage++;
			obj_characterInfo.lvlUpCost += 20;
			attackDelay -= 5;
		}
		draw_sprite_ext(spr_XP, 1, x - 160,y - 205, 1,obj_characterInfo.xp/obj_characterInfo.lvlUpCost, 0, c_white, 1);
		draw_set_color(c_white);
		draw_text(x - 140,y - 250,string(obj_characterInfo.level));
	}
}
