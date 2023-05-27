depth = -7000;
EFF_LAYER = -5000;
MOB_LAYER = -2000;
UI_LAYER = -6999;

state = "title";
instance_create_depth(0, 0, -8000, objScreenTitle);

instance_create_depth(0, 0, -100, objScreenBG);

goonSelector.unit = objGoon;
goonSelector.pic = imgGoon;
goonSelector.type = "goon";
specSelector.unit = noone;
specSelector.pic = noone;
specSelector.type = "spec";

eggTank.hatchPhase = 0;

coins = 0;
banners = 0;
herbs = 0;
gems = 0;
stars = 0;

for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
	perk[a, b] = false;
	//perk[a, b] = true; /////////////////
}}

//coins = 1000000; banners = 300; herbs = 100000; gems = 100000; stars = 10000; ///////////////


gameSpeed = 1;

troopCD = 270;
troopCDMax = 300;
troopCDBaseMax = 300;

specCD = 0;
specCDMax = 30 * 60;

for(var a=0; a<6; a++){ for(var b=0; b<10; b++){
	map[a, b] = noone;
}}



goon = objGoon;
spec = noone;


selected = noone;
releasedMouseSinceSelecting = true;

stage = 1;
stageMax = 1;
stageHP = 100;
stageHPMax = 100;
stageCD = 60;

hope = 1000;
hopeMax = 1000;

mp = 0;
mmp = 10000;



mouseOverUnit = noone;

casting = 0;
shield = 0;
rage = 0;
techPlus = 0;
fear = 0;

champ = noone;

mpCharge = 0;
mpChargeFull = false;

mouseoverText = "";
mouseOverTextColor = c_white;
mouseoverNote = "";
mouseoverNoteColor = c_white;
mouseoverName = "";
mouseOverNameColor = c_white;
gotUpgrade = false;

smallToolTip = "";

globalPowerLevel = 0;
globalPowerXP = 0;
globalPowerXPMax = 1000;

justLost = false;
eleSpawnCDMax = 30 * 60 * 2;
eleSpawnCD = eleSpawnCDMax;

storyPage = 1;

eleFighterXPFactor = 40;

soundOn = true;
eliteUpgrades = false;
bgm = 0;
bgmList = [bgm01, bgm02, bgm03, bgm04, bgm05, bgm06, bgm07, bgm08, bgm09, bgm10, bgm11, bgm12];


hatchPhase = 0;
hatchCD = 0;
hatchCDMax = 30 * 60 * 5;

drag_rest = 0;
drag_restMax = 30 * 60 * 15;
drag_age = 0;
drag_ageMax = 30 * 60 * 15 * 10;
drag_level = 0;

for(var i=0; i<20; i++){
	epic[i] = false;
}
xpBanked = 0;
xpBankedMax = 5000;

ww.popupPage = 1;

hopeAngelSummoned = false;
eldarSummoned = false;
selfSummoned = false;
eldarPast = 71;
selfPast = 81;

loadGame();
stage = stageMax;
if(!soundOn){ soundButton.image_index ++; }

helpPage = 1;


setPowers();
firstFrame = true;
if(stage > 1){ mp = floor(mmp / 2); }



mobList = ds_list_create();