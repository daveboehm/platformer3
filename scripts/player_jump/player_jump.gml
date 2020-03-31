show_debug_message("Jump State" + string(v_speed_));

set_movement();

if v_speed_ <= 0 {
	set_gravity();
	if btn_A_pressed {
		v_speed_ = jump_height_;
	}
	if btn_A_released {
		v_speed_ = 0;
	}
} else {
	state_ = player.fall;
}
