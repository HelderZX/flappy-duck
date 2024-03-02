
if(scr_leftClick() and counter > delay){
	if(obj_store.state == "stopped"){
		obj_store.moveDir = -1;
		obj_store.state = "moving";
	}
	counter = 0;
}
counter++;