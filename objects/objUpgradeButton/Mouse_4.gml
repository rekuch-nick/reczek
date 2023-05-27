if(ww.state != "play"){ return; }
ww.state = "upgrade";

instance_create_depth(0, 0, ww.UI_LAYER - 2, objScreenUpgrade);