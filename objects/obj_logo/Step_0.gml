if(y >= y_inicial) vsp = lerp(vsp, -.25, .01);
if(y <= y_final) vsp =  lerp(vsp, .25, .01);

y += vsp;