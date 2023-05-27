function attack(argument0) {
	var tar = argument0;

	y = y > tar.y ? yHome -30 : yHome + 30;

	var n = rollDamage(dice, might, element, foe, tar);



	if(tar.bearInFront && ww.bearForm && tar.ySpot == 5){
		n = ceil(n / 2);
		var d = ceil(n / instance_number(objHerbCollector));
		with(objHerbCollector){
			hp -= d;
		}
	}

	tar.hp -= n;

	if(bearInFront && ww.bearForm && ySpot == 5){
		if(irandom_range(0, 99) < 20){
			tar.stun += 60;
		}
	}

	if(poisonStrike > 0){
		var r = irandom_range(1, 100);
		if(r <= poisonChance){
			tar.poison += poisonStrike;
		}
	}

	if(strikeDownDef > 0){
		tar.defDown += strikeDownDef;
	}

	if(tar.hp < 1){
		if(isEleFighter && ww.eleXPGain){
			xp += ceil(tar.mhp / ww.eleFighterXPFactor);
		}
	
	}


}
