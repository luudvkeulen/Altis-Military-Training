call compile preprocessFile "UI\HUD.sqf";

[] spawn ICE_HUD;
execvm "jump.sqf"; 

definzone = false;
attinzone = false;
TowerRushStarted = false;

readycount = 0;
fatigue = 0.2;

SpawnGroup = group IndepGroup;
AttackGroup = group AttGroup;
DefenceGroup = group DefGroup;

publicVariable "readycount";
publicVariable "definzone";
publicVariable "attinzone";
publicVariable "TowerRushEnded";
publicVariable "TowerRushStarted";