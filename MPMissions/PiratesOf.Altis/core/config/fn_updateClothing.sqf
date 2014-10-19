/*

	Updates player clothing by replacing vanilla by custom ones

*/

/* ===Cops=== */
/* Streife */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam"}) then {
	[[player,0,"textures\uniforms\polizei_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* Einsatz */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_worn"}) then {
	[[player,0,"textures\uniforms\polizei_einsatz_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* SEK */
if(playerSide == west && {uniform player == "U_B_CombatUniform_mcam_vest"}) then {
	[[player,0,"textures\uniforms\sek_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* HideBackpack */
if(playerSide == west && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};

/* ===Medics=== */
/* Normal */
if(playerSide == independent && {uniform player == "U_I_HeliPilotCoveralls"}) then {
	[[player,0,"textures\uniforms\medic_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
/* MedicBackpack */
if(playerSide == independent && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,"textures\uniforms\medic_backpack.paa"];
};

/*
if(playerSide == east && {uniform player == "U_O_CombatUniform_oucamo"}) then {
	[[player,0,"textures\uniforms\pmo_uniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
};
*/
if(playerSide == east && {backpack player != ""}) then {
	unitBackpack player setObjectTextureGlobal [0,""];
};
