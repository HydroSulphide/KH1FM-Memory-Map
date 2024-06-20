LUAGUI_NAME = "UnlockSummon"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Unlocks all summons"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local unlockCommandSlot = 0x2DE9BD4
local summonSlotStartAddress = 0x2DE9B30



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("UnlockSummon - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Unlock Soras magic and summon command slot
		WriteByte(unlockCommandSlot, 0)

		-- Set summon command slots to the desired action ID
		WriteByte(summonSlotStartAddress, GlobalConstants:GetActions().DUMBO)
		WriteByte(summonSlotStartAddress + 1, GlobalConstants:GetActions().BAMBI)
		WriteByte(summonSlotStartAddress + 2, GlobalConstants:GetActions().GENIE)
		WriteByte(summonSlotStartAddress + 3, GlobalConstants:GetActions().TINKER_BELL)
		WriteByte(summonSlotStartAddress + 4, GlobalConstants:GetActions().MUSHU)
		WriteByte(summonSlotStartAddress + 5, GlobalConstants:GetActions().SIMBA)
		-- The last summon was never implemented and crashes on use, but I added this to show why there is a seventh summon slot
		-- Just uncomment the following line to remove the Bahamut summon
		WriteByte(summonSlotStartAddress + 6, GlobalConstants:GetActions().BAHAMUT)
	end
end