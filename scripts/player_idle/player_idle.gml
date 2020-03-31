// Idle State
set_gravity();
set_movement();

// Run
if h_speed_ != 0 { 
	state_ = player.run;
}

// Jump
if on_ground(o_dude, solid_) && btn_A_pressed {
	v_speed_ = jump_height_;
	state_ = player.jump;
}

// Attack
if btn_X_pressed {
	state_ = player.attack;	
}

// Shoot

// Dodge

// Climb

// Interact

// Take Damage