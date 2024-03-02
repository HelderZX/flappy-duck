hsp = global.vel;
x -= hsp;

if(collected){
	image_speed = 1;
	if(image_index > image_number - 1){
		instance_create_layer(8, room_height + sprite_get_height(spr_board_coins), "inst_hud", obj_board_coins);
		global.coins++;
		instance_destroy(self);
	}
}