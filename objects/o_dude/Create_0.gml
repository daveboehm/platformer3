/// @description Dude Idle

//init_gun();
//alarm[0] = bullet_cooldown_;

init_movement(1.75, o_solid);
init_gravity(0.4, 4.5);

jump_height_ = -5;
max_jump_height_ = -20;

state_ = player.idle;