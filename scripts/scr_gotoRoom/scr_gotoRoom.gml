// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_gotoRoom(nroom){
	if(!instance_exists(obj_transition)){
		var transition = instance_create_layer(0, 0, "inst_hud", obj_transition);
		transition.nextRoom = nroom;
	}
}