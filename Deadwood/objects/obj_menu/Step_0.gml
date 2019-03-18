if (room == room_menu) {

	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
		if (stage != 1) {
			yPos-=75;
			stage -= 1;
		}
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		if (stage != 4) {
			yPos+=75;
			stage += 1;
		}
	}
	if (keyboard_check_pressed(vk_enter)) {
		if (stage == 1) {
			room_goto(room_selection);
			xPos = 50;
			yPos = 500;
		}
		if (stage == 4) {
			game_end();
		}
	}

<<<<<<< HEAD
} else if (room == room_selection) {
=======
}

if (room == room_selection) {
>>>>>>> 9bf3aba142072a2aae7decfe26f0922323234d87

	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) {
		if (stage != 1) {
			xPos-=400;
			stage -= 1;
		}
	}
	if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) {
		if (stage != 3) {
			xPos+=400;
			stage += 1;
		}
	}
	if (keyboard_check_pressed(vk_enter)) {
		if (stage == 1) {
			obj_characterInfo.character = 1;
		}
		if (stage == 2) {
			obj_characterInfo.character = 2;
		}
		if (stage == 3) {
			obj_characterInfo.character = 3;
		}
		room_goto(room_tutorial);
	}
	if (keyboard_check_pressed(vk_escape)) {
		room_goto(room_menu);
	}

<<<<<<< HEAD
} else {
	if (keyboard_check_pressed(vk_escape)) {
		room = room_menu
	}
=======
>>>>>>> 9bf3aba142072a2aae7decfe26f0922323234d87
}