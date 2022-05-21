// movement
checkState();

if (place_meeting(x, y, obj_gborg)){
	obj_gborg.hit_by_vehicle = true;
	room_restart();
}


