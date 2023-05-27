function moveTo(argument0, argument1) {
	//scope: always called from unit

	var xx = argument0;
	var yy = argument1;

	if(ww.map[xx, yy] != noone){
		ww.map[xx, yy].xSpot = xSpot;
		ww.map[xx, yy].ySpot = ySpot;
	}

	var me = ww.map[xSpot, ySpot];
	ww.map[xSpot, ySpot] = ww.map[xx, yy];

	xSpot = xx;
	ySpot = yy;

	ww.map[xx, yy] = me;


}
