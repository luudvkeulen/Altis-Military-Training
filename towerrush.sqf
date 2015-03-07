_soldierside = _this select 0;
if(!TowerRushStarted) then
{
	player addAction["Vote Ready", "voteready.sqf"];
	player addEventHandler ["Respawn", {execVM "mincount.sqf"}];
	if(_soldierside == "defence") then 
	{
		[player] join DefenceGroup;
		_markerpos = (getMarkerPos "DefenceSpawn");
		player setPos [_markerpos select 0, _markerpos select 1, 15];
		execVM "givegear.sqf";
		player forceAddUniform "U_O_CombatUniform_oucamo";
	};
	if(_soldierside == "attack") then
	{
		[player] join AttackGroup;
		player setPos (getMarkerPos "AttackSpawn");
		execVM "givegear.sqf";
		player forceAddUniform "U_I_CombatUniform";
	};
}
else
{
	if(isPlayer player) then
	{
		hint "Game has already started";
		sleep 4;
		hint "";
	};
};
