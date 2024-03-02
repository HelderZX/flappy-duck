//Skin
sprite_index = skins[skinId];

//Inputs
if(delay >= 10){
	var space_key = keyboard_check_pressed(vk_space);
}
else{
	space_key = 0;
}

//Jump
if(space_key && state != "dead"){
	delay = 0;
	vsp = -(space_key * jump);
}

//Gravity
vsp += grv;

//Tilt
if(vsp <= 0){
	image_angle += 2;
}
else{
	image_angle -= 2;
}

image_angle = clamp(image_angle, -10, 15) //limit tilt

y += vsp;
y = clamp(y, 0 + sprite_height/2, room_height);
delay++;

//Die
if(state != "dead"){
	if(place_meeting(x, y, obj_trunk)){
		if(global.points > global.record){
			global.record = global.points;
		}
		scr_saveGame();
		state = "dead";
		src_screenShake(30, 2.5, 0.2);
	}
}

//Points 
if(place_meeting(x, y, obj_checkpoint)){
	var p = instance_place(x, y, obj_checkpoint);
	p.point = true;
}

//Record
if(place_meeting(x, y, obj_new_record)){
	instance_destroy(obj_new_record);
}

//Coin
if(place_meeting(x, y, obj_coin)){
	var c = instance_place(x, y, obj_coin);
	c.collected = true;
}

//Animation
switch(state){
	case "soar":
		image_speed = 0;
		image_index = 0;
		if(space_key) state = "wings";
	break;
	case "wings":
		image_speed = 1;
		if(image_index > image_number - 1) state = "soar";
	break;
	case "dead":
		global.vel = lerp(global.vel, 0, 0.1);
		global.playing = 0;
	break;
}