if(ww.state != "play"){ return; }


if(type == "goon"){
	ww.state = "goon select";
} else {
	ww.state = "spec select";
}
var s = instance_create_depth(0, 0, ww.UI_LAYER - 2, objScreenUnitSelect);