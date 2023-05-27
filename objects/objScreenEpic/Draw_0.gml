draw_self();


draw_set_font(fntPlain);
draw_set_color(c_white);

if(ww.epic[0]){
	draw_text(70, 100, " XP Bank: When an Elemental Fighter is slain,");
	draw_text(70, 120, "you will store some of its XP to dole out to");
	draw_text(70, 140, "other Elemental FIghters over time.");
}

if(ww.epic[1]){
	draw_text(70, 180, " MultiBear: When an Herb Collector turns,");
	draw_text(70, 200, "into a bear, it will instead turn into a");
	draw_text(70, 220, "four armed beast who gains max HP over time.");
}

if(ww.epic[2]){
	draw_text(70, 260, " Healing Draughts: Chemists will heal nearby,");
	draw_text(70, 280, "allies a small amount.");
}

if(ww.epic[3]){
	draw_text(70, 340, " Fire Circle: Fire Jugglers can throw more");
	draw_text(70, 360, "fire faster.");
}

if(ww.epic[4]){
	draw_text(70, 420, " Guardian: When all Hope is lost, an Angel");
	draw_text(70, 440, "will appear to fight for you for a short time.");
}