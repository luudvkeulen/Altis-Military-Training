_cnt1 = count units AttackGroup;
_cnt2 = count units DefenceGroup;
_cnt = ((_cnt1 + _cnt2) - 2);
if(attinzone && definzone) then 
{
	[("TowerRush: " + (name player) + " is ready!"),"systemChat",nil,true] call BIS_fnc_MP;
	readycount = (readycount + 1);
	publicVariable "readycount";
	removeAllActions player;
	if(_cnt == readycount) then
	{
		["TowerRush: Match starting in:","systemChat",nil,true] call BIS_fnc_MP;
		sleep 1;
		["TowerRush: 3","systemChat",nil,true] call BIS_fnc_MP;
		sleep 1;
		["TowerRush: 2","systemChat",nil,true] call BIS_fnc_MP;
		sleep 1;
		["TowerRush: 1","systemChat",nil,true] call BIS_fnc_MP;
		sleep 1;
		["TowerRush: Match starting!","systemChat",nil,true] call BIS_fnc_MP;
		FNC_HIDE = { (_this select 0) hideObject (_this select 1); };
		[[TowerRushObject1, true],"FNC_HIDE",true,true] call BIS_fnc_MP;
		[[TowerRushObject2, true],"FNC_HIDE",true,true] call BIS_fnc_MP;
		TowerRushStarted = true;
	};
}
else 
{
	if(isPlayer player) then
	{
		hint "No enemy's in the zone yet";
		sleep 3;
		hint "";
	};
};
