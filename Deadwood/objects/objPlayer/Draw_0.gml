draw_self();
//HUD code for displaying player stats
<<<<<<< HEAD
//Health Display
draw_sprite(spr_HealthBar,1, x - 100,y - 250);
draw_sprite(spr_HealthBorder,1, x - 100,y - 250);
draw_sprite_ext(spr_HealthBar1, 1, x - 100,y - 250, obj_characterInfo.hp/100,1, 0, c_white, 1);
//XP/Level Display
draw_sprite(spr_XP1, 1, x-160, y-205);
if(obj_characterInfo.xp == obj_characterInfo.lvlUpCost){
	obj_characterInfo.xp = 0;
	obj_characterInfo.level++;
	
}
draw_sprite_ext(spr_XP, 1, x - 160,y - 205, 1,obj_characterInfo.xp/obj_characterInfo.lvlUpCost, 0, c_white, 1);
draw_set_color(c_white);
draw_text(x - 140,y - 250,string(obj_characterInfo.level));
//Display Gold
draw_sprite(spr_Gold, 1, x-400, y+200);
draw_set_color(c_white);
draw_text(x - 370,y + 200,"X " + string(obj_characterInfo.gold));
//Display Potions
draw_sprite(spr_Potion, 1, x+350, y+200);
draw_set_color(c_white);
draw_text(x + 380,y + 200,"X " + string(obj_characterInfo.potions));
=======
//draw_set_font(font0);
draw_set_color(c_white);
draw_text(x -400,y - 250,"Health: " + string(obj_characterInfo.hp));
draw_text(x - 200,y - 250,"XP: " + string(obj_characterInfo.xp));
draw_text(x ,y - 250,"Level: " + string(obj_characterInfo.level));
draw_text(x + 200,y - 250,"Gold: " + string(obj_characterInfo.gold));
>>>>>>> 9bf3aba142072a2aae7decfe26f0922323234d87
