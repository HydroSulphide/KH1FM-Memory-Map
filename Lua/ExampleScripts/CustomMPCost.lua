LUAGUI_NAME = "CustomMPCost"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Sets custom mp costs for specific magic, summons or abilities"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

-- spells and abilities expect MP * 100 or 30 like fire and blizzard
local thundagaMPCost = 30
local arsArcanumMPCost = 100 -- 1 MP
local tornadoMPCost = 200 -- 2 MP
-- summons expect plain MP value 
local tinkerBellMPCost = 1 -- 1 MP


-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("CustomMPCost - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
    	WriteShort(GlobalConstants:GetMPCosts().THUNDAGA, thundagaMPCost)
    	WriteShort(GlobalConstants:GetMPCosts().ARS_ARCANUM, arsArcanumMPCost)
    	WriteShort(GlobalConstants:GetMPCosts().TORNADO, tornadoMPCost)
    	WriteShort(GlobalConstants:GetMPCosts().TINKER_BELL, tinkerBellMPCost)
	end
end