function src_screenShake(_time, _magnitude, _fade){
   with (obj_screen_shake)
   {
      shake = true;
      shake_time = _time;
      shake_magnitude = _magnitude;
      shake_fade = _fade;
   }
}