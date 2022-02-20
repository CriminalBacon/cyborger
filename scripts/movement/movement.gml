function checkState(){
	if (state == moveState.GO) {
		x += driveSpeed;
	}

	if (x > (room_width + (sprite_width/2))) {
		instance_destroy();
		respawnVehicle();
		state = moveState.WAIT;

	}

	if (state == moveState.WAIT){
		respawnTimer += 1;
	}

	if (state == moveState.WAIT) && (respawnTimer > 130){
		state = moveState.RESPAWN;
	}

	if (state == moveState.RESPAWN){
		respawnTimer = 0;
		state = moveState.GO;
		x = -80
	}
}

function respawnVehicle(){
	var lane = choose(LANE1, LANE2, LANE3, LANE4);
	var car = choose(obj_orange_car, obj_pink_car, obj_red_van, obj_white_limo);
	instance_create_layer(-70, lane, "Instances", car)
	state = moveState.WAIT;
	
}

