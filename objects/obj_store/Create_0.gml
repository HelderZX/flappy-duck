show = 0;
state = "stopped"
moveDir = 1;
dist = 144;
vel = .1;
duckLeft = instance_create_layer(104-dist, 136, "inst_duckStore", obj_duck_store);
duckMid = instance_create_layer(104, 136, "inst_duckStore", obj_duck_store);
duckRigth = instance_create_layer(104+dist, 136, "inst_duckStore", obj_duck_store);

