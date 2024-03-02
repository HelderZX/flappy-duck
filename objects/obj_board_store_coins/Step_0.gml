number = global.coins;

if(number < 10){
	image_index = 0;
	unidade = number;
	dezena = 0;
	centena = 0;
}

if(number >= 10) and (number < 100){
	image_index = 1;
	unidade = number mod 10;
	dezena = ((number - unidade) / 10) mod 10;
	centena = 0;
}

if(number >= 100){
	image_index = 2;
	unidade = number mod 10;
	dezena = ((number - unidade) / 10) mod 10;
	centena = (((number - unidade) / 10) - dezena) / 10;
}