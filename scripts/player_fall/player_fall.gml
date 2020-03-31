set_movement();
set_gravity();
show_debug_message("Fall State");

image_speed = 0;
image_index = 0;
if (v_speed_ == 0) {
	state_ = player.idle;
}