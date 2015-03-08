waitUntil {!isNull player && player == player};

player setPos (getPos player vectorAdd [0,0,4.3]);

[player] join SpawnGroup;

enableRadio false;
enableSentences false;
0 fadeRadio 0;
enableEnvironment false;

//removeAllWeapons player;
removeBackpack player;
removeGoggles player;
removeHeadgear player;
removeAllItems player;
removeVest player;

life_fatigue = 0.2;
life_earplugs = false;

[] spawn am_fnc_fatigueReset;
hint "Done";

removeAllActions player;
player removeAllEventHandlers "Respawn";