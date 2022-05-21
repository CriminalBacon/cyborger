if (point_distance(x, y, obj_gborg.x, obj_gborg.y) < 55){
	visible = true;
	sprite_index = spr_laser_target;


}

// check to see if target animation has ended
if (image_index >= 10) {
	instance_change(obj_explosion, true);


}

