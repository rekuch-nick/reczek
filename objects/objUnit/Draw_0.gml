if(frozen > 0){
	draw_sprite_stretched(sprite_index, 0, x, y, 70, 70);
} else {
	draw_self();
}

if(hp < mhp){
	var y1 = y + 2;
	if(!foe){ y1 += 60; }
	var x1 = x + 5;
	var x2 = x1 + ((hp / mhp) * 60);
	if(x2 < x1){ x2 = x1; }
	
	var col = make_color_rgb(200, 50, 50);
	draw_set_color(col);
	draw_rectangle(x1, y1, x2, y1 + 5, false);
}
if(xp > 0){
	var y1 = y - 5;
	if(!foe){ y1 += 60; }
	draw_set_color(c_orange);
	draw_rectangle(x + 5, y1, x + 5 + ((xp / mxp) * 60), y1 + 3, false);
}
if(ammo > 0){
	draw_set_font(fntTiny);
	draw_set_color(c_yellow);
	draw_text(x + 2, y + 53, ammo);
}

if(level > 1){
	draw_set_color(c_white);
	draw_set_font(fntSmall);
	var a = x + 55;
	if(level > 9){ a -= 25; }
	draw_text(x + 50, y + 4, level);
}


//draw_set_color(c_white); draw_text(x, y + 20, hp);

var x1 = x; var y1 = y;
if(retreat && !foe){
	draw_sprite_stretched(uimgRetreatSmall, 0, x1, y1, 20, 20);
	y1 += 20;
}
if(ww.champ == id){
	draw_sprite_stretched(uimgChamp, 0, x1, y1, 20, 20);
	y1 += 20;
}

if(defDown > 0){
	var t = uimgDefDown;
	if(defDown > 3){ t = uimgDefDown2; }
	if(defDown > 6){ t = uimgDefDown3; }
	if(defDown > 9){ t = uimgDefDown4; }
	if(defDown > 12){ t = uimgDefDown5; }
	if(defDown > 15){ t = uimgDefDown6; }
	if(defDown > 18){ t = uimgDefDown7; }
	if(defDown > 21){ t = uimgDefDown8; }
	draw_sprite_stretched(t, 0, x1, y1, 20, 20);
	if(y1 >= y + 40){
		y1 = 0; x1 += 20;
	} else {
		y1 += 20;
	}
}

if(eldarShield > 0){
	draw_sprite_stretched(uimgEldarShield, 0, x1, y1, 20, 20);
	if(y1 >= y + 40){
		y1 = 0; x1 += 20;
	} else {
		y1 += 20;
	}
}




if(frozen > 0){
	draw_set_alpha(.3);
	draw_sprite_stretched(imgTileIce, 0, x, y, 70, 70);
	draw_set_alpha(1);
}

if(poison > 0){
	draw_set_alpha(.7);
	var frame = floor(poison / 15);
	frame = frame % 2 == 0 ? 0 : 1;
	draw_sprite_stretched(imgPoison, frame, x, y, 70, 70);
	draw_set_alpha(1);
}

if(stun > 0){
	draw_set_alpha(.7);
	var frame = floor(stun / 15);
	frame = frame % 2 == 0 ? 0 : 1;
	draw_sprite_stretched(imgStun, frame, x, y, 70, 70);
	draw_set_alpha(1);
}

