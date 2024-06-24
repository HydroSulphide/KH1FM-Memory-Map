LUAGUI_NAME = "CustomMagicDamage"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Will set damage of some magic spells to defined values."

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local fireDamage = 100 -- set fire damage to 100 + MP
local gravityDamage = 90 -- set gravity damage percentage to 90% + 5% * MP
local stopraDuration = 10 -- sets stopra duration to 10 + MP seconds
local aerogaDuration = 60 -- sets aeroga duration to 60 + 2 * MP seconds


-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("CustomMagicDamage - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		WriteByte(GlobalConstants:GetMacigDamage().FIRE, fireDamage)
		WriteByte(GlobalConstants:GetMacigDamage().GRAVITY, gravityDamage)
		WriteByte(GlobalConstants:GetMacigDamage().STOPRA, stopraDuration)
		WriteByte(GlobalConstants:GetMacigDamage().AEROGA, aerogaDuration)
	end
end