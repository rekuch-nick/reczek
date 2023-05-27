ww.helpPage = clamp(ww.helpPage, 1, 5);
image_index = ww.helpPage - 1;

draw_self();


draw_set_font(fntPlain);
draw_set_color(c_white);

if(ww.helpPage == 1){
	draw_text(100, 125, " In the Rise of Reczek, you'll walk through");
	draw_text(100, 150, "the history of our earliest recorded days.");
	
	draw_text(100, 200, " Lead our people's armies into battle and ");
	draw_text(100, 225, "secure our place in history.");
	
	//draw_text(120, 550, " Choose the right upgrades and unit  .");
}

if(ww.helpPage == 2){
	draw_text(120, 125, " Look to the top right of the screen:");
	draw_text(120, 150, "The red Stage bar, and the white Hope bar.");
	draw_sprite(imgHelp001, 0, 500, 190);
	draw_text(120, 300, " The Stage bar shows how many monsters are");
	draw_text(120, 335, "still coming in the current stage.");
	draw_text(120, 350, " The Hope will go down a little each time one");
	draw_text(120, 375, "of your units is slain. When it is empty, no");
	draw_text(120, 400, "more allied units will join the battle.");
	draw_text(120, 425, "Hope refills each stage.");
}

if(ww.helpPage == 3){
	draw_text(120, 125, " Look to the top right of the screen:");
	draw_text(120, 150, "The red Stage bar, and the white Hope bar.");
	draw_sprite(imgHelp001, 0, 500, 190);
	draw_text(120, 300, " The Stage bar shows how many monsters are");
	draw_text(120, 335, "still coming in the current stage.");
	draw_text(120, 350, " The Hope will go down a little each time one");
	draw_text(120, 375, "of your units is slain. When it is empty, no");
	draw_text(120, 400, "more allied units will join the battle.");
	draw_text(120, 425, "Hope refills each stage.");
}



if(ww.helpPage == 4){
	draw_text(120, 120, "Game by:");
	draw_set_font(fntHuge);
	draw_text(200, 400, "rekuchn");
	
}


if(ww.helpPage == 5){
	
	draw_text(120, 120, "Music:");
	
	draw_set_font(fntSmall);
	
	var x1 = 100;
	var y1 = 170;
	var ym = 12;
	
	draw_text(x1, y1 + (0 * ym), "Voxel Revolution by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/");
	draw_text(x1, y1 + (1 * ym), "7017-voxel-revolution License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (2 * ym), "Bleeping Demo by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/");
	draw_text(x1, y1 + (3 * ym), "7012-bleeping-demo License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (4 * ym), "Neon Laser Horizon by Kevin MacLeod Link: https://incompetech.filmmusic.io/song/");
	draw_text(x1, y1 + (5 * ym), "7015-neon-laser-horizon License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (6 * ym), "Disco Club by WinnieTheMoog Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (7 * ym), "7203-disco-club License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (8 * ym), "Advanced Science by MusicLFiles Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (9 * ym), "7186-advanced-science License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (10 * ym), "A Competitive Technology For The Future by MusicLFiles Link:");
	draw_text(x1, y1 + (11 * ym), "https://filmmusic.io/song/7197-a-competitive-technology-for-the-future");
	draw_text(x1, y1 + (12 * ym), "License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (13 * ym), "Science And Technology For A Better World by MusicLFiles Link:");
	draw_text(x1, y1 + (14 * ym), "https://filmmusic.io/song/7182-science-and-technology-for-a-better-world");
	draw_text(x1, y1 + (15 * ym), "License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (16 * ym), "Ambient Corporate by WinnieTheMoog Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (17 * ym), "6188-ambient-corporate License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (18 * ym), "Loving Modern Technology by MusicLFiles Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (19 * ym), "7056-loving-modern-technology License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (20 * ym), "Street Trap by WinnieTheMoog Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (21 * ym), "5181-street-trap License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (22 * ym), "Afterparty Review by Sascha Ende Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (23 * ym), "2962-afterparty-review License: https://filmmusic.io/standard-license");
	draw_text(x1, y1 + (24 * ym), "Medicine by WinnieTheMoog Link: https://filmmusic.io/song/");
	draw_text(x1, y1 + (25 * ym), "6256-medicine License: https://filmmusic.io/standard-license");
	
	
	
	
	
	
	
}