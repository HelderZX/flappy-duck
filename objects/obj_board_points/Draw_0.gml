draw_self();
var wsize = sprite_get_width(spr_numbers);
var sep = 3;
var text_x = x + ((sprite_get_width(spr_board_points) - ((wsize * 3) + (sep * 2))) / 2);
var text_y = y + sprite_get_height(spr_board_points) / 3;


if(number < 10){
	draw_sprite(spr_numbers, unidade, text_x + wsize + sep, text_y);
}
if(number >=10) and (number < 100){
	var text_x = x + ((sprite_get_width(spr_board_points) - ((wsize * 2) + (sep * 1))) / 2);
	draw_sprite(spr_numbers, dezena, text_x, text_y);
	draw_sprite(spr_numbers, unidade, text_x + wsize + sep, text_y);
}
if(number >= 100){
	draw_sprite(spr_numbers, centena, text_x, text_y);
	draw_sprite(spr_numbers, dezena, text_x + wsize + sep, text_y);
	draw_sprite(spr_numbers, unidade, text_x + (wsize * 2) + (sep * 2), text_y);
}