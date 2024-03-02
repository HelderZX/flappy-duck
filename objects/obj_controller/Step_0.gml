//if(keyboard_check_pressed(ord("N"))) room_goto_next();
//if(keyboard_check_pressed(ord("R"))) game_restart();

var lay_id = layer_get_id("Background");
var vel = (global.vel * 1) / 2;
layer_hspeed(lay_id, -vel);

if(global.points > 1 && global.playing = 1){
	global.vel = 2 + (global.points / 20);
}