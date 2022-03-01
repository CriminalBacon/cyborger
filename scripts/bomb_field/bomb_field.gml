function create_random_bomb(){
	var _bomb_x = random_range(BOMB_X_MIN, BOMB_X_MAX);
	var _bomb_y = random_range(BOMB_Y_MIN, BOMB_Y_MAX);
	
	instance_create_layer(_bomb_x, _bomb_y, "instances", obj_bomb);
}

function create_bomb_field(number_of_bombs){
	
	for (var i = 1; i < number_of_bombs; i++){
		create_random_bomb();
	}

}