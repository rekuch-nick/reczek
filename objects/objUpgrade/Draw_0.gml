image_alpha = can ? .4 : 0;

if(have){ image_alpha = 1; }

draw_self();

draw_set_alpha(image_alpha);
draw_sprite_stretched(pic, 0, x + 10, y + 10, sprite_width - 20, sprite_height - 20);
draw_set_alpha(1);


