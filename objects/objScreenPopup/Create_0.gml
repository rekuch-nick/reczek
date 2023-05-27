scale();
depth = -8000;


eB = instance_create_depth(1050, 65, depth - 1, objExitButton);
eOn = 0;

var o = instance_create_depth(65, 560, depth - 1, objPageButton);
o.dir = -1;

var o = instance_create_depth(1075, 560, depth - 1, objPageButton);
o.dir = 1;

image_index = ww.popupPage;

setUpgrades = false;