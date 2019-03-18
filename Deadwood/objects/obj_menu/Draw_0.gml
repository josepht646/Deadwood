//Background image reference
//https://www.deviantart.com/danielwachter/art/The-Ritual-311882956


if (room == room_menu) {
	
	draw_set_alpha(1);

	draw_sprite_ext(spr_selection, 0, xPos, yPos, 5, 1, 0, -1, 0.5);


	//Draw Title
	draw_set_font(font_title);
	draw_set_color(c_white);
	draw_text(room_width/2-150, 10, "DeadWood");

	//Draw Menu Items
	draw_set_font(font_menu);
	//draw_set_color(c_white);
	draw_text(room_width/2-100, 200, "Play Game");
	draw_text(room_width/2-90, 275, "Controls");
	draw_text(room_width/2-85, 350, "Credits");
	draw_text(room_width/2-70, 425, "Exit");

}

if (room == room_selection) {
	
	//Draw Title
	draw_set_font(font_title);
	draw_set_color(c_white);
	draw_text(room_width/2-250, 10, "Character Selection");
	
	//Draw Menu Items
	draw_set_font(font_menu);
	draw_set_alpha(1);

	//Draw name of characters
	draw_text(250, 150, "Ariwis");
	draw_text(650, 150, "Exar");
	draw_text(1050, 150, "Marmaduc");

	//Draw sprites
	draw_sprite_ext(sprArcherWCBD, 0, 300, 400, 4, 4, 0, -1, 1);
	draw_sprite_ext(sprKnightWS, 0, 700, 400, 4, 4, 0, -1, 1);
	draw_sprite_ext(sprWizardWS, 0, 1100, 400, 4, 4, 0, -1, 1);
	
	draw_text(xPos, yPos, "Select");

}