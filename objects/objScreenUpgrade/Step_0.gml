

for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
	if(ww.perk[a, b]){
		perks[a, b].have = true;
	}
}}


perks[0, 4].can = true;

for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
	if(perks[a, b].have && b > 0){
		perks[a, b-1].can = true;
	}
}}

if(perks[0, 4].have){
	perks[1, 4].can = true;
	perks[2, 4].can = true;
}

if(perks[2, 4].have){
	perks[3, 4].can = true;
	perks[4, 4].can = true;
	perks[5, 4].can = true;
	perks[6, 4].can = true;
}

if(perks[2, 3].have){
	perks[7, 4].can = true;
	perks[8, 4].can = true;
}

if(perks[7, 4].have && perks[8, 4].have){
	perks[9, 4].can = true;
	perks[10, 4].can = true;
}

if(perks[3, 2].have && perks[4, 2].have && perks[5, 2].have){
	perks[11, 4].can = true;
}