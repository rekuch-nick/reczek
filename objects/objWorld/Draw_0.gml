//draw_text(500, 10, string(mouse_x) + ", " + string(mouse_y));


draw_set_color(c_gray);
draw_set_font(fntPlain);
draw_text(820, 8, "Stage: " + string(stage));
draw_set_color(c_maroon);
var x1 = 370 * (stageHP / stageHPMax);
draw_rectangle(820, 30, 820 + x1, 40, false);

draw_set_color(c_white);
draw_text(820, 58, "Hope");
if(fear > 0){ draw_set_color(c_orange); }
var x1 = 370 * (hope / hopeMax);
draw_rectangle(820, 80, 820 + x1, 90, false);

if(perk[2, 3]){
	draw_set_color(c_yellow);
	draw_text(820, 108, "Energy");
	var x1 = 370 * (mp / mmp);
	draw_rectangle(820, 130, 820 + x1, 140, false);
}







draw_set_color(c_white);
var x1 = 370 * (troopCD / troopCDMax);
if(x1 > 370){ x1 = 370; }
draw_rectangle(10, 585, 10 + x1, 595, false);

if(spec != noone){
	var x1 = 370 * (specCD / specCDMax);
	if(x1 > 370){ x1 = 370; }
	if(techPlus > 0){ draw_set_color(c_aqua); }
	draw_rectangle(10, 680, 10 + x1, 690, false);
}




draw_set_font(fntPlain);
draw_set_color(c_white);
if(coins > 0){
	draw_sprite_stretched(imgCoins, 0, 10, 10, 40, 40);
	draw_text(60, 20, coins);
}
if(banners > 0){
	draw_sprite_stretched(imgBanner, 0, 10, 60, 40, 40);
	draw_text(60, 70, banners);
}
if(herbs > 0){
	draw_sprite_stretched(imgHerbs, 0, 10, 110, 40, 40);
	draw_text(60, 120, herbs);
}
if(gems > 0){
	draw_sprite_stretched(imgGem, 0, 10, 160, 40, 40);
	draw_text(60, 170, gems);
}
if(stars > 0){
	draw_sprite_stretched(imgStar, 0, 10, 210, 40, 40);
	draw_text(60, 220, stars);
}



if(mouseOverUnit != noone){
	
	draw_set_color(c_white);
	draw_set_font(fntPlain);
	if(mouseOverUnit == noone){ return; } ///
	if(mouseOverUnit.name == noone){ return; } ///
	
	
	draw_text(820, 240, mouseOverUnit.name);
	var s = "HP: " + string(mouseOverUnit.hp) + " / " + string(mouseOverUnit.mhp);
	draw_text(820, 260, s);
	
	var mig = mouseOverUnit.might;
	if(!mouseOverUnit.foe && ww.winBonus){ mig += floor(ww.banners / 2); }
	
	s = "POW: " + string(mouseOverUnit.dice) + "D6 + " + string(mig);
	draw_text(820, 280, s);
	if(mouseOverUnit.armor != 0){
		s = "DEF: " + string(mouseOverUnit.armor);
		draw_text(820, 300, s);
	}
	
	if(mouseOverUnit.ammo > 0){
		s = "AMMO: " + string(mouseOverUnit.ammo);
		draw_text(820, 320, s);
	}
	
	if(mouseOverUnit.element == "Fire"){
		draw_set_color(c_red);
		draw_text(820, 380, mouseOverUnit.element);
	}
	if(mouseOverUnit.element == "Earth"){
		draw_set_color(c_lime);
		draw_text(820, 380, mouseOverUnit.element);
	}
	if(mouseOverUnit.element == "Water"){
		draw_set_color(c_blue);
		draw_text(820, 380, mouseOverUnit.element);
	}
	
} else {
	drawSmallToolTip();
}
smallToolTip = "";


if(casting == 1){
	var a = getX(mouse_x);
	var b = getY(mouse_y);
	lightningCursor(a, b);
	if(multiLightning){
		lightningCursor(a+1, b);
		lightningCursor(a-1, b);
		lightningCursor(a, b+1);
		lightningCursor(a, b-1);
	}
	
	
}

if(casting == 4){
	var a = getX(mouse_x);
	var b = getY(mouse_y);
	if(inBounds(a, b)){
		draw_set_alpha(.5);
		draw_set_color(c_fuchsia);
		var x1 = 390 + (a * 70);
		var y1 = (b * 70);
		draw_rectangle(x1, y1, x1 + 70, y1 + 70, false);
		draw_set_alpha(1);
	}
}


if(casting == 6){
	var a = getX(mouse_x);
	var b = getY(mouse_y);
	if(inBounds(a, b)){
		draw_set_alpha(.5);
		draw_set_color(c_lime);
		var x1 = 390 + (a * 70);
		var y1 = (b * 70);
		draw_rectangle(x1, y1, x1 + 70, y1 + 70, false);
		draw_set_alpha(1);
	}
}


if(shield > 0){
	draw_set_alpha(random_range(.4, .6));
	var col = irandom_range(0, 2) == 1 ? c_white : c_aqua;
	draw_set_color(col);
	draw_rectangle(390, 350, 390 + (6 * 70), 390, false);
	draw_set_alpha(random_range(.6, .9));
	draw_rectangle(390, 350, 390 + (6 * 70), 355, false);
	draw_set_alpha(1);
}

if(rage > 0){
	draw_set_alpha(((rage / (30 * 6)) * .5) + .3);
	draw_sprite_stretched(imgRageOn, irandom_range(0, 2), 390, 350, 70 * 6, 70 * 5);
	
	draw_set_alpha(1);
}

//debug
//draw_set_color(c_white);
//draw_text(300, 10, string(mouse_x) + ", " + string(mouse_y));





