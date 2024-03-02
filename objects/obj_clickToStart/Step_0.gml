
if(scr_leftClick()) room_goto(rm_game);

if(image_alpha >= 1) alpha = -.02;
if(image_alpha <= 0) alpha =  .02;

image_alpha += alpha;