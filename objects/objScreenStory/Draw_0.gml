ww.storyPage = clamp(ww.storyPage, 1, 12);
image_index = ww.storyPage - 1;

draw_self();


draw_set_font(fntBig);
draw_set_color(c_white);

if(ww.storyPage == 1){
	draw_text(120, 120, "  In those days, we believed that");
	draw_text(120, 150, "the plains went on forever.");
	
	draw_text(120, 550, "  It was a simple, peacful time.");
}

if(ww.storyPage == 2){
	draw_text(120, 120, "  Some of the elders spoke of men");
	draw_text(120, 150, "who roamed the land. Men so evil,");
	
	draw_text(120, 550, " They were more monster than man.");
}


if(ww.storyPage == 3){
	draw_text(120, 120, "  We took them for tall tales.");
	draw_text(120, 150, "Dismissed our grandparents as");
	draw_text(120, 180, "story tellers.");
}

if(ww.storyPage == 4){
	draw_text(120, 120, " Sometimes I think about how dark");
	draw_text(120, 150, "and alone they must have felt-");
	draw_text(120, 180, "ignored and mocked while they");
	draw_text(120, 210, "tried to warn us.");
}

if(ww.storyPage == 5){
	draw_text(120, 120, "  When the monsters came, they");
	draw_text(120, 150, "came as a tyhpoon, a");
	draw_text(120, 180, "thunderstorm.");
}

if(ww.storyPage == 6){
	draw_text(120, 120, "  I have never seen such ");
	draw_text(120, 150, "reckless hate.");
	
	draw_text(120, 550, "  Such madness.");
}

if(ww.storyPage == 7){
	draw_text(120, 120, "  They didn't even take our food");
	draw_text(120, 150, "or our gold. All they wanted to do");
	draw_text(120, 180, "was burn and slay and worse.");
	
}

if(ww.storyPage == 8){
	draw_text(120, 120, "  So few of us survived.");
}

if(ww.storyPage == 9){
	draw_text(120, 120, "  None of our elders.");
}

if(ww.storyPage == 10){
	draw_text(120, 120, "  There is but one rational");
	draw_text(120, 150, "  reponse.");
	draw_text(120, 550, "  One action to take.");
}

if(ww.storyPage == 11){
	draw_text(120, 120, "  Our society is gone.");
	//draw_text(120, 150, "  Our children have burned.");
	draw_set_color(c_red);
	//draw_text(120, 550, "  Our children have burned.");
}

if(ww.storyPage == 12){
	//draw_text(120, 120, "  Let the crusade begin.");
	draw_set_color(c_aqua);
	draw_text(120, 550, "                       Deus vult!");
}