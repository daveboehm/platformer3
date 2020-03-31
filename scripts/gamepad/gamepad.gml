/// @description gamepad step
dvc = 0;
if (gamepad_is_connected(dvc)) {
	
	move_up = gamepad_axis_value(dvc,gp_axislv) < -0.3 || keyboard_check(ord("W"));
	move_down = gamepad_axis_value(dvc,gp_axislv) > 0.3 || keyboard_check(ord("S"));
	move_left = gamepad_axis_value(dvc,gp_axislh) < -0.3 || keyboard_check(ord("A"));
	move_right = gamepad_axis_value(dvc,gp_axislh) > 0.3 || keyboard_check(ord("D"));
	
	move_upright = gamepad_axis_value(dvc,gp_axislv) < -0.3 && gamepad_axis_value(dvc,gp_axislh) > 0.3;
	move_upleft = gamepad_axis_value(dvc,gp_axislv) < -0.3 && gamepad_axis_value(dvc,gp_axislh) < -0.3;
	move_downright = gamepad_axis_value(dvc,gp_axislv) > 0.3 && gamepad_axis_value(dvc,gp_axislh) > 0.3;
	move_downleft = gamepad_axis_value(dvc,gp_axislv) > 0.3 && gamepad_axis_value(dvc,gp_axislh) < -0.3;
	
	btn_X = gamepad_button_check( dvc, gp_face3 );
	btn_Y = gamepad_button_check( dvc, gp_face4 );
	btn_A = gamepad_button_check( dvc, gp_face1 );
	btn_B = gamepad_button_check( dvc, gp_face2 );
	
	btn_X_pressed = gamepad_button_check_pressed( dvc, gp_face3 );
	btn_Y_pressed = gamepad_button_check_pressed( dvc, gp_face4 );
	btn_A_pressed = gamepad_button_check_pressed( dvc, gp_face1 ) || keyboard_check(vk_space);
	btn_B_pressed = gamepad_button_check_pressed( dvc, gp_face2 );
	
	btn_X_released = gamepad_button_check_released( dvc, gp_face3 );
	btn_Y_released = gamepad_button_check_released( dvc, gp_face4 );
	btn_A_released = gamepad_button_check_released( dvc, gp_face1 ) || keyboard_key_release(vk_space);
	btn_B_released = gamepad_button_check_released( dvc, gp_face2 );
	
	btn_start = gamepad_button_check_released( dvc, gp_start );
	btn_select = gamepad_button_check_released( dvc, gp_select );
	btn_r1 = gamepad_button_check_released( dvc, gp_shoulderr );
	btn_r2 = gamepad_button_check_released( dvc, gp_shoulderrb );
	btn_l1 = gamepad_button_check_released( dvc, gp_shoulderl );
	btn_l2 = gamepad_button_check_released( dvc, gp_shoulderlb );
}
