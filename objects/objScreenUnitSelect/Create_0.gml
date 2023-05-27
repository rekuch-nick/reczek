scale();

instance_create_depth(955, 110, depth - 1, objExitButton);


if(ww.state == "goon select"){
	var x1 = 260; var y1 = 300;
	var xo = 130;
	
	var g1 = instance_create_depth(x1, y1, depth - 1, objUnitButton);
	g1.pic = imgGoon;
	g1.unit = objGoon;
	
	if(ww.goonLevel >= 2){
		var g2 = instance_create_depth(x1 + (xo*1), y1, depth - 1, objUnitButton);
		g2.pic = imgGoon2;
		g2.unit = objGoon2;
	}
	if(ww.goonLevel >= 3){
		var g2 = instance_create_depth(x1 + (xo*2), y1, depth - 1, objUnitButton);
		g2.pic = imgGoon3;
		g2.unit = objGoon3;
	}
	if(ww.goonLevel >= 4){
		var g2 = instance_create_depth(x1 + (xo*3), y1, depth - 1, objUnitButton);
		g2.pic = imgGoon4;
		g2.unit = objGoon4;
	}
	if(ww.goonLevel >= 5){
		var g2 = instance_create_depth(x1 + (xo*4), y1, depth - 1, objUnitButton);
		g2.pic = imgGoon5;
		g2.unit = objGoon5;
	}
}



if(ww.state == "spec select"){
	var x1 = 260; var y1 = 220;
	var xo = 130; var yo = 110;
	
	if(ww.makeFireMan){
		var g1 = instance_create_depth(x1 + (xo * 0), y1 + (yo*0), depth - 1, objUnitButton);
		g1.pic = imgFireMan;
		g1.unit = objFireMan;
	}
	
	if(ww.makeEarthMan){
		var g2 = instance_create_depth(x1 + (xo * 1), y1 + (yo*0), depth - 1, objUnitButton);
		g2.pic = imgEarthMan;
		g2.unit = objEarthMan;
	}
	
	if(ww.makeWaterMan){
		var g3 = instance_create_depth(x1 + (xo * 2), y1 + (yo*0), depth - 1, objUnitButton);
		g3.pic = imgWaterMan;
		g3.unit = objWaterMan;
	}
	
	if(ww.makeFancyMan){
		var g4 = instance_create_depth(x1 + (xo * 3), y1 + (yo*0), depth - 1, objUnitButton);
		g4.pic = imgFancyMan;
		g4.unit = objFancyMan;
	}
	if(ww.makePyro){
		var g5 = instance_create_depth(x1 + (xo * 0), y1 + (yo*1), depth - 1, objUnitButton);
		g5.pic = imgPyro;
		g5.unit = objPyro;
	}
	if(ww.makeHerbCollector){
		var g6 = instance_create_depth(x1 + (xo * 1), y1 + (yo*1), depth - 1, objUnitButton);
		g6.pic = imgHerbPicker;
		g6.unit = objHerbCollector;
	}
	if(ww.makeChemist){
		var g7 = instance_create_depth(x1 + (xo * 2), y1 + (yo*1), depth - 1, objUnitButton);
		g7.pic = imgChemist;
		g7.unit = objChemist;
	}
	if(ww.makeArcher){
		var g8 = instance_create_depth(x1 + (xo * 3), y1 + (yo*1), depth - 1, objUnitButton);
		g8.pic = imgArcher;
		g8.unit = objArcher;
	}
	
	
	if(ww.makeEleLords){
		var g9 = instance_create_depth(x1 + (xo * 0), y1 + (yo*2), depth - 1, objUnitButton);
		g9.pic = imgFireLord;
		g9.unit = objFireLord;
	}
	if(ww.makeEleLords){
		var g10 = instance_create_depth(x1 + (xo * 1), y1 + (yo*2), depth - 1, objUnitButton);
		g10.pic = imgEarthLord;
		g10.unit = objEarthLord;
	}
	if(ww.makeEleLords){
		var g11 = instance_create_depth(x1 + (xo * 2), y1 + (yo*2), depth - 1, objUnitButton);
		g11.pic = imgWaterLord;
		g11.unit = objWaterLord;
	}
	
	if(ww.makeBard){
		var g12 = instance_create_depth(x1 + (xo * 3), y1 + (yo*2), depth - 1, objUnitButton);
		g12.pic = imgBard;
		g12.unit = objBard;
	}
	
	if(ww.perk[11, 3]){
		var g12 = instance_create_depth(x1 + (xo * 4), y1 + (yo*0), depth - 1, objUnitButton);
		g12.pic = imgCoins;
		g12.unit = objNo;
	}
	
}