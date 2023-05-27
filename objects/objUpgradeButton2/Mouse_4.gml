if(ww.state != "play"){ return; }
if(!ww.eliteUpgrades){ return; }

ww.state = "epic";
instance_create_depth(0, 0, depth, objScreenEpic);