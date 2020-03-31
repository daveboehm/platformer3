gamepad();

direction_ = move_right - move_left;
h_speed_ = direction_ * movement_speed_;
flipped_ = direction_ != 0 ? direction_ : flipped_;

player_state(state_);
