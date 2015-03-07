_winner = _this select 0;
if(_winner == "defence") then
{
	["TowerRush: Defenders won!","systemChat",nil,true] call BIS_fnc_MP;
};
if(_winner == "attack") then
{
	["TowerRush: Attackers won!","systemChat",nil,true] call BIS_fnc_MP;
};
readycount = 0;
TowerRushStarted = false;
FNC_HIDE = { (_this select 0) hideObject (_this select 1); };
[[TowerRushObject1, false],"FNC_HIDE",true,true] call BIS_fnc_MP;
[[TowerRushObject2, false],"FNC_HIDE",true,true] call BIS_fnc_MP;
publicVariable "TowerRushStarted";
publicVariable "readycount";
{
  if(((group _x) == (group AttGroup)) || ((group _x) == (group DefGroup)))then
  {
  	_x setDamage 1;
  }
} forEach playableUnits;