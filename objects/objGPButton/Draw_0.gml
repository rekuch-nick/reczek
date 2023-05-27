



draw_self();


draw_sprite_stretched(imgCoins, 0, x + 20, y + 20, 40, 40);

var x1 = 170;
var w = 600;
var y1 = 140;


draw_set_color(c_black);
draw_rectangle(x1, y1, x1 + w, y1 + 15, false);

draw_set_color(c_yellow);
draw_rectangle(x1, y1, x1 + ((ww.globalPowerXP / ww.globalPowerXPMax) * w), y1 + 15, false);

draw_set_font(fntPlain);
draw_text(x1, y1 - 30, "Unit Power Bonus: +" + string(ww.globalPowerLevel) + "0%");


