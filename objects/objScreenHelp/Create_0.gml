scale();
depth = -8000;

instance_create_depth(1050, 65, depth - 1, objExitButton);

var o = instance_create_depth(65, 560, depth - 1, objPageButton);
o.dir = -1;

var o = instance_create_depth(1075, 560, depth - 1, objPageButton);
o.dir = 1;


