var _horizontal_dir = direction_;
if h_speed_ == 0 && (move_down - move_up == 0) { 
	_horizontal_dir = flipped_;
}
aim_ = point_direction(0, 0, (_horizontal_dir), (move_down - move_up));
