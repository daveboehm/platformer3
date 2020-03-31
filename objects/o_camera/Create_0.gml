target_ = o_dude;
width_ = camera_get_view_width(view_camera[0]);
height_ = camera_get_view_height(view_camera[0]);
scale_ = view_wport[0] / width_;
camera_scale_increment_ = 1/scale_;
camera_follow_speed_ = 0.1;