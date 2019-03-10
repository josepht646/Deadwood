draw_self();
//HUD code for displaying player stats
//draw_set_font(font0);
draw_set_color(c_white);
draw_text(x -400,y - 250,"Health: " + string(obj_characterInfo.hp));
draw_text(x - 200,y - 250,"XP: " + string(obj_characterInfo.xp));
draw_text(x ,y - 250,"Level: " + string(obj_characterInfo.level));
draw_text(x + 200,y - 250,"Gold: " + string(obj_characterInfo.gold));