function scr_leftClick(){
	if(mouse_check_button_released(mb_left)) {
		if(position_meeting(mouse_x, mouse_y, self)) return true;
		else return false;
	}else return false;
}