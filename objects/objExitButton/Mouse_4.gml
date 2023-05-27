if(!visible){ return; }


if(skill != -1){
	ww.epic[skill] = true;
	
	if(skill == 3){ with(objPyro){ longLob = objLobShot; } }
	
	setPowers();
}


with(objScreen){ instance_destroy(); }
with(objTempButton){ instance_destroy(); }
ww.state = "play";

setPowers();
//instance_destroy();
with(objExitButton){ instance_destroy(); }