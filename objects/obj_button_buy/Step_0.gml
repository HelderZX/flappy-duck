
var pos = obj_store.duckMid.skinId;
//show: 0-vermelho, 1-comprar, 2-selecionar, 3-selecionado
if(global.buyed[pos] == true){
	number = noone;
	if(pos == global.skinSelected) show = 3;
	else show = 2;
}
else{
	show = 1;
	number = global.price[pos];
}


if(scr_leftClick() and obj_store.state == "stopped"){
	obj_store.duckMid.state = "wings";
	global.skinSelected = obj_store.duckMid.skinId;
	scr_saveGame();
}

if(number != noone){

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
}