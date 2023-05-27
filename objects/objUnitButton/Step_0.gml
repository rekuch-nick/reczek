if((ww.state == "goon select" || ww.state == "spec select")){
	if(mouse_x >= x && mouse_x <= x + sprite_width){
		if(mouse_y >= y && mouse_y <= y + sprite_height){
			
			if(pic == imgGoon || pic == imgGoon2 || pic == imgGoon3 || pic == imgGoon4 || pic == imgGoon5){
				ww.mouseoverName = "Soldier";
				ww.mouseoverText = "These basic fighters are the backbone of your army.";
			}
			
			
			if(pic == imgFireMan || pic == imgEarthMan || pic == imgWaterMan){
				ww.mouseoverName = "Elemental Fighter";
				ww.mouseoverText = "These versital warriors are perfect for stricking at an enimies weakness: remember, Fire deals double damage to Earth. Earth deals double damage to Water. Water deals double damage to Fire.";
			}
			
			if(pic == imgFancyMan){
				ww.mouseoverName = "Gentleman";
				ww.mouseoverText = "High damage with low HP.";
				if(ww.perk[2, 1]){ ww.mouseoverText += " Produces coins over time."; }
				if(ww.perk[9, 0]){ ww.mouseoverText += " Poisons foes."; }
			}
			
			if(pic == imgPyro){
				ww.mouseoverName = "Fire Juggler";
				ww.mouseoverText = "Has a ranged fire attack.";
				if(ww.perk[3, 1]){ ww.mouseoverText += " Will try to back up if in the front row."; }
			}
			
			if(pic == imgHerbPicker){
				ww.mouseoverName = "Herb Collector";
				ww.mouseoverText = "Collects Herbs.";
				if(ww.perk[4, 1]){ ww.mouseoverText += " While in the front row, turns into a bear with bonus damage and armor, a chance to stun monsters, and splits 50% of the damage it receives with all your other Herb Collectors."; }
			}
			
			if(pic == imgChemist){
				ww.mouseoverName = "Chemist";
				ww.mouseoverText = "Heals quickly over time. Each time it attacks it puts a debuff on the target making it take more damage each time it attacks.";
			}
			
			if(pic == imgArcher){
				ww.mouseoverName = "Archer";
				ww.mouseoverText = "Has a long ranged attack. Will turn into a solider when out of arrows.";
				if(ww.perk[2, 0]){ ww.mouseoverText = "Has a long ranged attack. Will turn into a solider when out of arrows unless you have a spare gem it can consume to buy more."; }
				if(ww.perk[9, 0]){ ww.mouseoverText += " Gains a few more arrows each time you enter a new stage."; }
			}
			
			if(pic == imgBard){
				ww.mouseoverName = "Bard";
				ww.mouseoverText = "Plays a bardsong that causes your hope to refil over time.";
				if(ww.perk[6, 0]){ 
					ww.mouseoverText = " Has a 20% chance to gain and fire an arrow each second."; 
					if(ww.perk[9, 0]){ ww.mouseoverText += " Arrows have a chance to call a lightning strike."; }
				}
			}
			
			if(pic == imgFireLord || pic == imgEarthLord || pic == imgWaterLord){
				ww.mouseoverName = "Elemental Lord";
				ww.mouseoverText = "These mighty warriors are slow to produce but incredibly powerful.";
			}
			
		
		}
	}
}