if (x > xRight || x < xLeft) {
	objPlayer.fighting = 0;
	instance_destroy();
}

if (y > yDown || y < yUp) {
	objPlayer.fighting = 0;
	instance_destroy();
}