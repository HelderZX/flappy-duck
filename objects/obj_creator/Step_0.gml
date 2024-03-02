/// @description Creation controll
randomize();
if(global.playing = 1){
	counter++;
	
	if(counter >= delay){
		//random heigth
		var t_height = random_range(-176, 0);
		//upper trunk
		var upper = instance_create_layer(room_width + sprite_get_width(spr_trunk_up), t_height, "inst_trunks", obj_trunk);
		//under trunk
		var under = instance_create_layer(upper.x, upper.y + (upper.sprite_height) + 64, "inst_trunks", obj_trunk);
		//+1 point
		var checkpoint = instance_create_layer(upper.x + ((upper.sprite_width) / 2), upper.y + (upper.sprite_height), "inst_hide", obj_checkpoint);
		//Crown
		if(global.points + 1 == global.record)
		var new_record = instance_create_layer(upper.x, upper.y + (upper.sprite_height) + 32, "inst_trunks", obj_new_record);
		else var new_record = noone;
		//Coin
		if(random_range(0, 10) > 8) and (new_record == noone)
		var coin = instance_create_layer(upper.x, upper.y + (upper.sprite_height) + 32, "inst_trunks", obj_coin);
		else var coin = noone;
	
		under.sprite_index = spr_trunk_down;
		//reset counter
		counter = 0;
	}
}