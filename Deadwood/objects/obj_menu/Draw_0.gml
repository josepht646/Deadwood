//Background image reference
//https://www.deviantart.com/danielwachter/art/The-Ritual-311882956
//https://ak9.picdn.net/shutterstock/videos/28038799/thumb/1.jpg


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
	
	draw_text(275, room_height-50, "Arrow Keys and Enter to Select");

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
	
	draw_text(500, room_height-50, "Escape to Return, Enter to Select");

}

if (room == room_controls) {
	
	//Draw Title
	draw_set_font(font_title);
	draw_set_color(c_white);
	draw_text(room_width/2-150, 10, "Controls");
	
	//Draw Menu Items
	draw_set_font(font_menu);
	draw_set_alpha(1);

	//Draw menu items
	draw_text(150, 150, "Main Attack:");
	draw_text(400, 150, "Left Mouse Button");
	draw_text(150, 225, "Secondary Attack:");
	draw_text(400, 225, "Right Mouse Button (Not Implemented)");
	draw_text(150, 300, "Move:");
	draw_text(400, 300, "Arrow Keys/WASD");
	draw_text(150, 375, "Interact:");
	draw_text(400, 375, "R");
	draw_text(150, 450, "Return to Menu:");
	draw_text(400, 450, "Escape");
	
	draw_text(350, room_height-50, "Escape to Return");

}

if (room == room_credits) {
	
	//Draw Title
	draw_set_font(font_title);
	draw_set_color(c_white);
	draw_text(room_width/2-150, 10, "Developers");
	
	//Draw Menu Items
	draw_set_font(font_menu);
	draw_set_alpha(1);

	//Draw name of group
	draw_text(200, 150, "Jeffrey Stenerson");
	draw_text(600, 150, "Joseph Thurston");
	draw_text(200, 225, "Shaine Carroll-Frey");
	draw_text(600, 225, "Ben Fraser");

	
	draw_set_font(font_title);
	draw_set_color(c_white);
	draw_text(room_width/2-185, 300, "Special Thanks");
	
	//Draw Menu Items
	draw_set_font(font_menu);
	draw_set_alpha(1);
	
	draw_text(400, 425, "Mark Baldwin");
	draw_text(400, 500, "Daniel Wachter");
	draw_text(400, 575, "ak9.picdn.net");
	
	draw_text(375, room_height-50, "Escape to Return");

}