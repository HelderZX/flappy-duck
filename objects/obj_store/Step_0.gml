switch(state){
	case "stopped":
		for (var i = 0; i < instance_number(obj_duck_store); i++){
			var duck = instance_find(obj_duck_store, i);
			if(round(duck.x) == 104-dist) duckLeft = duck;
			else if(round(duck.x) == 104) duckMid = duck;
			else if(round(duck.x) == 104+dist) duckRigth = duck;
		}
		duckLeft.skinId = duckMid.skinId-1;
		duckRigth.skinId = duckMid.skinId+1;
		if(duckMid.skinId == 0) duckLeft.skinId = 5;
		if(duckMid.skinId == 5) duckRigth.skinId = 0;
	break;
	case "moving":
		if(moveDir == 1){
			duckLeft.x = lerp(duckLeft.x, duckLeft.x-dist, vel);
			duckMid.x = lerp(duckMid.x, duckMid.x-dist, vel);
			duckRigth.x = lerp(duckRigth.x, duckRigth.x-dist, vel);
			if(round(duckLeft.x) == 104-(dist*2)){
				duckLeft.x = 104+dist;
				state = "stopped";
			}
		}
		else if(moveDir == -1){
			duckLeft.x = lerp(duckLeft.x, duckLeft.x+dist, vel);
			duckMid.x = lerp(duckMid.x, duckMid.x+dist, vel);
			duckRigth.x = lerp(duckRigth.x, duckRigth.x+dist, vel);
			if(round(duckRigth.x) == 104+(dist*2)){
				duckRigth.x = 104-dist;
				state = "stopped";
			}
		}
	break;
}