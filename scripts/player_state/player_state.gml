///@description Player State
///@param state_

var _state = argument0;

show_debug_message(_state);

sprite_array_[player.idle] = s_dude_idle;
sprite_array_[player.run] = s_dude_run;
sprite_array_[player.jump] = s_dude_jump;
sprite_array_[player.fall] = s_dude_jump;
sprite_array_[player.attack] = s_dude_attack;
/* 
sprite_array_[player.shoot] = s_dude_shoot;

sprite_array_[player.dodge] = s_dude_dodge;
sprite_array_[player.dash] = s_dude_dash;
sprite_array_[player.doubleJump] = s_dude_jump;
sprite_array_[player.climb] = s_dude_climb;
sprite_array_[player.wallJump] = s_dude_wall_jump;
sprite_array_[player.ledgeGrab] = s_dude_ledge_grab;
sprite_array_[player.takeDamage] = s_dude_take_damage;
sprite_array_[player.dead] = s_dude_dead;
sprite_array_[player.interact] = s_dude_interact;
sprite_array_[player.powerUp] = s_dude_power_up;
*/

script_array_[player.idle] = player_idle;
script_array_[player.run] = player_run;
script_array_[player.jump] = player_jump;
script_array_[player.fall] = player_fall;
script_array_[player.attack] = player_attack;
/*
script_array_[player.shoot] = player_shoot;

script_array_[player.dodge] = player_dodge;
script_array_[player.dash] = player_dash;
script_array_[player.doubleJump] = player_double_jump;
script_array_[player.climb] = player_climb;
script_array_[player.wallJump] = player_wall_jump;
script_array_[player.ledgeGrab] = player_ledge_grab;
script_array_[player.takeDamage] = player_take_damage;
script_array_[player.dead] = player_dead;
script_array_[player.interact] = player_interact;
script_array_[player.powerUp] = player_power_up;
*/



image_xscale = flipped_;

if (_state >= 0) {
	script_execute(script_array_[_state]);
	sprite_index = sprite_array_[_state];
} else {
	show_message("no state_ for " + string(_state));
}
