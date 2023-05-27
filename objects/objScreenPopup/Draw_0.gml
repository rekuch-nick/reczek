draw_self();

if(ww.popupPage < pMin){ ww.popupPage = pMin; }
if(ww.popupPage > pMax){ ww.popupPage = pMax; }
image_index = ww.popupPage;

if(eB != noone){
	eB.visible = ww.popupPage == pMax;
}


draw_set_font(fntPlain);
draw_set_color(c_white);


if(ww.popupPage == 0){
	draw_text(60, 60, "Onward men. We do not stop till nightfall.");
}

if(ww.popupPage == 1){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "Thank the Lord, humans!");
}

if(ww.popupPage == 2){
	draw_text(60, 60, "Calm yourself.");
	draw_text(60, 80, "What is a Northman doing in these lands?");
}

if(ww.popupPage == 3){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "My company were on pilgrimage to");
	draw_text(1140, 80, "visit the ancestral lands.");
	draw_text(1140, 100, "I have not seen them since I was a boy.");
}

if(ww.popupPage == 4){
	draw_text(60, 60, "It is good that you honor our traditions.");
	draw_text(60, 80, "What company? You are alone.");
}

if(ww.popupPage == 5){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "I ... They ...");
}

if(ww.popupPage == 6){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "They came like a thunderstorm.");
	draw_text(1140, 80, "They are humans, but not.");
	draw_text(1140, 100, "They killed everyone. I ...");
}

if(ww.popupPage == 7){
	draw_text(60, 60, "They have done the same to our village.");
	draw_text(60, 80, "Stay with my people, we will protect you.");
}

if(ww.popupPage == 8){
	draw_text(60, 60, "We march for the ancestral lands!");
	draw_text(60, 80, "The elders there will know what to do.");
	
	eB.x = 985; eB.y = 550; 
}



if(ww.popupPage == 10){
	draw_text(60, 60, "Just over this ridge is the ancestral city.");
	draw_text(60, 80, "Nothing is quite like seeing the stone tower");
	draw_text(60, 100, "cresting into the sky.");
	draw_text(60, 120, "The elders here will know what to do.");
}

if(ww.popupPage == 11){
	draw_set_font(fntBig);
	draw_text(60, 60, "NO!");
}

if(ww.popupPage == 12){
	draw_text(60, 60, "This is...");
}

if(ww.popupPage == 13){
	draw_text(60, 60, "I'll kill them all!");
}

if(ww.popupPage == 14){
	draw_text(60, 60, "Even if there are ...");
}

if(ww.popupPage == 15){
	draw_text(60, 60, "Tens of thousands ...");
}

if(ww.popupPage == 16){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "We can't hope to prevail against so many.");
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(60, 80, "It doesn't matter! Find your honor, man!");
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 100, "You can't save anyone if you're dead!");
}

if(ww.popupPage == 17){
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 60, "There's another village a few days away.");
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(60, 80, "You would have us run?!");
	draw_set_halign(fa_right);
	draw_set_color(c_orange);
	draw_text(1140, 100, "I would have you seek out other survivors,");
	draw_text(1140, 120, "and build an army.");
}

if(ww.popupPage == 18){
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_text(60, 60, "You coward! You ... you ...");
	draw_text(60, 80, "You are right.");
	draw_text(60, 120, "Lord forgive me, I swear I will return.");
}




if(ww.popupPage == 20){
	draw_text(60, 60, "After marching and fighting for days, we");
	draw_text(60, 80, "reach the next village.");
	draw_text(60, 100, "It is burnt and smoldering just like all");
	draw_text(60, 120, "the others.");
}

if(ww.popupPage == 21){
	draw_text(60, 60, "No signs of life-");
}

if(ww.popupPage == 22){
	draw_set_halign(fa_right);
	draw_set_color(c_yellow);
	draw_text(1140, 60, "Why hello there, young fellows!");
	draw_text(1140, 80, "Nice to see some of us still about.");
}

if(ww.popupPage == 23){
	draw_text(60, 60, "Thanks. As soon as I can gather up");
	draw_text(60, 80, "the survivors I'll cut my way back into");
	draw_text(60, 100, "our holy land.");
}

if(ww.popupPage == 24){
	draw_set_halign(fa_right);
	draw_set_color(c_yellow);
	draw_text(1140, 60, "I can lead you to the others, and");
	draw_text(1140, 80, "help you gather your strength for");
	draw_text(1140, 100, "the assult.");
}
if(ww.popupPage == 25){
	draw_set_halign(fa_right);
	draw_set_color(c_yellow);
	draw_text(1140, 60, "I can even share some of our people's");
	draw_text(1140, 80, "wisdom with you:");
}
if(ww.popupPage == 26){
	draw_text(60, 60, "Choose an advanced upgrade:");
}

if(ww.popupPage == 28){
	draw_set_color(c_orange);
	draw_text(60, 60, "We're getting close.");
}

if(ww.popupPage == 29){
	draw_set_halign(fa_right);
	draw_set_color(c_green);
	draw_text(1140, 60, "So, we do still have an army!");
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(60, 80, "Indeed. And it seems we still have");
	draw_text(60, 100, "a village as well. How did so many");
	draw_text(60, 120, "avoid the invaders?");
}

if(ww.popupPage == 30){
	draw_set_color(c_green);
	draw_set_halign(fa_right);
	draw_text(1140, 60, "Why, we hid in the wilderness, of course. ");
	draw_text(1140, 80, "All the monsters got their hands on were");
	draw_text(1140, 100, "empty homes.");
}

if(ww.popupPage == 31){
	draw_set_color(c_green);
	draw_set_halign(fa_right);
	draw_text(1140, 60, "And now, we'll add our power to yours. ");
}

if(ww.popupPage == 32){
	draw_text(60, 60, "Choose an advanced upgrade:");
}

if(ww.popupPage == 34){
	draw_text(60, 60, "This is the only way across.");
}

if(ww.popupPage == 35){
	draw_text(60, 60, "Carefully now...");
}

if(ww.popupPage == 36){
	draw_text(60, 60, "I think it's going to hold.");
}

if(ww.popupPage == 38){
	draw_set_color(c_gray);
	draw_set_halign(fa_right);
	draw_text(1140, 60, "Do you think we'll be safe here?.");
	draw_set_color(c_orange);
	draw_text(1140, 80, "There's no way anyone will find");
	draw_text(1140, 100, "us here, ever.");
}

if(ww.popupPage == 39){
	draw_set_color(c_orange);
	draw_set_halign(fa_right);
	draw_text(1140, 60, "!!");
}

if(ww.popupPage == 40){
	draw_text(60, 60, "Choose an advanced upgrade:");
}

if(ww.popupPage == 42){
	draw_text(60, 60, "Another Eldar! I'll protect you.");
}
if(ww.popupPage == 47){
	draw_text(60, 60, "Choose an advanced upgrade:");
}

if(ww.popupPage == 49){
	draw_text(60, 60, "We've found you, at last.");
	draw_set_color(c_purple);
	draw_set_halign(fa_right);
	draw_text(1140, 80, "With our combined forces");
	draw_text(1140, 100, "We may be able to stand against horde.");
}
if(ww.popupPage == 50){
	draw_text(60, 60, "I'll march at once.");
}
if(ww.popupPage == 51){
	draw_text(60, 60, "I will acompany you.");
}
if(ww.popupPage == 52){
	draw_text(60, 60, "Choose an advanced upgrade:");
}


if(ww.popupPage == 54){
	draw_text(60, 60, "Just over this ridge is what's left of");
	draw_text(60, 80, "The holy city.");
}

if(ww.popupPage == 55){
	draw_text(60, 60, "The beasts are still there.");
}

if(ww.popupPage == 56){
	draw_text(60, 60, "This will not stand.");
}
if(ww.popupPage == 57){
	draw_text(60, 60, "I will wait no longer.");
}
if(ww.popupPage == 58){
	draw_text(60, 60, "With me, my warriors,");
}
if(ww.popupPage == 59){
	draw_text(60, 60, "I will take the field myself.");
}

if(ww.popupPage == 61){
	draw_set_color(c_orange);
	draw_text(60, 60, "The day is ours. At last, our people can rest.");
}
if(ww.popupPage == 62){
	draw_set_halign(fa_right);
	draw_text(1140, 60, "Rest? There will be no rest.");
	draw_set_color(c_orange);
	draw_set_halign(fa_left);
	draw_text(60, 80, "Our foe is routed, broken. They won't");
	draw_text(60, 100, "be back for a generation.");
}
if(ww.popupPage == 63){
	draw_text(60, 60, "Yes, and what after that? My children fight");
	draw_text(60, 80, "our war? I will not stop while any of them live.");
}
if(ww.popupPage == 64){
	draw_text(60, 60, "I will find their every last nest.");
}



draw_set_halign(fa_left);