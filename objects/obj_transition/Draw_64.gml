var i, k, spriteFrameCount = sprite_get_number(spr_transition);
var transition_width = sprite_get_width(spr_transition);
var transition_height = sprite_get_height(spr_transition);

if(transition){
	if(transitionSubImage < spriteFrameCount + (view_wport[0]/transition_width))
	{
		transitionSubImage += transitionSpeed;
	}
	else
	{
		room_goto(nextRoom);
		transition = false;
	}
}
else
{
	transitionSubImage -= transitionSpeed;
	if(transitionSubImage < 0) instance_destroy();
}

for(i = 0; i < view_wport[0] div transition_width+1; i++ )
{
	for(k = 0; k < view_hport[0] div transition_height; k++ )
	{
		var spriteSubImage = transitionSubImage - i;
		if(spriteSubImage < 0) spriteSubImage = 0;
		else if(spriteSubImage > spriteFrameCount-1) spriteSubImage = spriteFrameCount-1;
		draw_sprite(spr_transition, spriteSubImage, i*transition_width, k*transition_height);
	}
}