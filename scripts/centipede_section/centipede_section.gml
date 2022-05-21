function check_dead_space(){
	
	if (place_meeting(x, y, par_centipede)){
		safe_state = true;
	} else {
		safe_state = false;
	}
	
	if ((safe_state == false) && (point_in_rectangle(x, y, DEADSPACE_X_MIN, DEADSPACE_Y_MIN, DEADSPACE_X_MAX, DEADSPACE_Y_MAX))){
		room_restart();
	
	}

}