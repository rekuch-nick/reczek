if(ww.state != "play"){ return; }
if(rest >= restMax){
		rest = 0;
		flyTime = 30 * 20 + (level * 30 * 5);
		thinkCD = 0;
		sleeping = false;
		sprite_index = flySprite;
}