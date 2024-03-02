
number = global.coins;

if(number < 10){
	image_index = 0;
	unidade = number;
	dezena = 0;
	centena = 0;
}
if(number >= 10) and (number < 100){
	image_index = lerp(image_index, 4, .2);
	unidade = number mod 10;
	dezena = ((number - unidade) / 10) mod 10;
	centena = 0;
}
if(number >= 100){
	image_index = lerp(image_index, 9, .2);
	unidade = number mod 10;
	dezena = ((number - unidade) / 10) mod 10;
	centena = (((number - unidade) / 10) - dezena) / 10;
}

switch(state){
	case "up":
		y -= 3;
		if(y <= room_height - sprite_get_height(spr_board_coins)) state = "stop";
	break;
	case "stop":
		counter++;
		if(counter >= room_speed){
			state = "down";
			counter = 0;
		}
	break;
	case "down":
		y += 3;
		if(y >= room_height + sprite_get_height(spr_board_coins)) instance_destroy();
	break;
}