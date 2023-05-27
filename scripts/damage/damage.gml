function damage(argument0, argument1, argument2) {
	var tar = argument0;
	var dam = argument1;
	var ele = argument2;

	if(tar == noone){ return; }

	var n = rollDamage(0, dam, ele, noone, tar);





	if(tar.bearInFront && ww.bearForm && tar.ySpot == 5){
		n = ceil(n / 2);
		var d = ceil(n / instance_number(objHerbCollector));
		with(objHerbCollector){
			hp -= d;
		}
	}




	tar.hp -= n;


}
