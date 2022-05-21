//destroy instance after animation

if (image_index >= 10) {
	instance_destroy();

}


if (place_meeting(x, y, obj_gborg)){
	obj_gborg.hit_by_explosion = true;
	room_restart();

}
