/// @description Move and collide
show_debug_message("Run State");
set_gravity();

set_movement();

// Fall
if (v_speed_ > 0) { state_ = player.fall; }

// Idle
if (h_speed_ == 0) { state_ = player.idle; }

// Jump / Fall
if on_ground(o_dude, solid_) && btn_A_pressed { 
	v_speed_ = jump_height_;
	state_ = player.jump; 
}	

// Attack
if btn_X_pressed {
	state_ = player.attack;
}