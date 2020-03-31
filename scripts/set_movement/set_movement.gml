/// @description Move and collide

if place_meeting(x + h_speed_, y, o_solid) {
	while !place_meeting(x + sign(h_speed_), y, o_solid) {
		x += sign(h_speed_);
	}
	h_speed_ = 0;
} 
x += h_speed_;


if place_meeting(x, y + v_speed_, o_solid) {
	while !place_meeting(x, y + sign(v_speed_), o_solid) {
		y += sign(v_speed_);
	}
	v_speed_ = 0;
}
y += v_speed_;

if self.direction_ != 0 {
	self.flipped_  = self.direction_;
}