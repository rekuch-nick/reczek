if(ww.state != "play"){ return; }

ww.state = "help";
instance_create_depth(0, 0, depth, objScreenHelp);