
sprite_index = skins[skinId];

//Animation
switch(state){
	case "soar":
		image_speed = 0;
		image_index = 0;
	break;
	case "wings":
		image_speed = 1;
		if(image_index > image_number - 1) state = "soar";
	break;
}