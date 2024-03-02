draw_self();

draw_sprite(spr_button_buy_text, show, x, y);

if(number != noone){
	var wsize = sprite_get_width(spr_numbers2);
	var sep = 1;
	var text_x = x + ((sprite_get_width(spr_board_store_coins) / .85 - ((wsize * 3) + (sep * 2))) / 2);
	var text_y = y + sprite_get_height(spr_board_store_coins) / 3.15;

	if(number < 10){
		draw_sprite(spr_numbers2, unidade, text_x + wsize + sep, text_y);
	}
	if(number >= 10) and (number < 100){
		var text_x = x + ((sprite_get_width(spr_board_store_coins) / .8 - ((wsize * 2) + (sep * 1))) / 2);
		draw_sprite(spr_numbers2, dezena, text_x, text_y);
		draw_sprite(spr_numbers2, unidade, text_x + wsize + sep, text_y);
	}
	if(number >= 100){
		draw_sprite(spr_numbers2, centena, text_x, text_y);
		draw_sprite(spr_numbers2, dezena, text_x + wsize + sep, text_y);
		draw_sprite(spr_numbers2, unidade, text_x + (wsize * 2) + (sep * 2), text_y);
	}
}