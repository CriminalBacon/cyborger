// movement
moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

if (vx == 0) && (vy == 0){
	switch dir {
		case 0: sprite_index = gborg_idle_right;
		break;
		case 1: sprite_index = gborg_idle_up;
		break;
		case 2: sprite_index = gborg_idle_left;
		break;
		case 3: sprite_index = gborg_idle_down;
		break;
	
	}

}

//change walking sprite
if (vx > 0) {
	sprite_index = gborg_walk_right;
	dir = 0
} 

if (vx < 0) {
	sprite_index = gborg_walk_left;
	dir = 2;
}

if (vy > 0) {
	sprite_index = gborg_walk_down;
	dir = 3;

}

if (vy < 0) {
	sprite_index = gborg_walk_up;
	dir = 1;

}

//check for vehicle collision
//if (!collision_point(x+vx, y, obj_parent_vehicle, true, true)){
//	x += vx;
//}

//if (!collision_point(x, y+vy, obj_parent_vehicle, true, true)){
//	y += vy;

//}

// check for explosion collision
if (collision_rectangle(x-6, y, x + 6, y - 30, obj_explosion, false, false)){
	room_restart();
}

//check for dead space collision
check_dead_space();

//check for centipede collision
if (position_meeting(x, y, par_centipede)){
	var _inst = instance_place(x, y, par_centipede);
	if (collision_point(x, y, par_centipede, true, false) != _inst){
		// do nothing
	} else {
	vx += _inst.speed;
	//vx += other.speed;
	}
} 

x += vx;
y += vy;




