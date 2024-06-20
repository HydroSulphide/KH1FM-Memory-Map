LUAGUI_NAME = "UnlockMagic"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Unlocks magic for Sora and Donald"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local unlockCommandSlot = 0x2DE9BD4
local unlockMagicSora = 0x2DE93D4
local unlockMagicDonald = 0x2DE9448
local magicTierStartAddress = 0x2DE97F2 -- Starts at Fire
local desiredMagicTier = 3 -- Tier 3: -ga



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("UnlockMagic - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Unlock Soras magic and summon command slot
		WriteByte(unlockCommandSlot, 0)

		-- Unlock all Spells for Sora: Set byte to 0b01111111 = 0x7F
		-- Unlock only Fire and Cure: Set byte to 0b00001001 = 0x09
		WriteByte(unlockMagicSora, 0x7F)

		-- Unlock all Spells for Donald
		WriteByte(unlockMagicDonald, 0x7F)

		-- Set magic tier
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().FIRE, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().BLIZZARD, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().THUNDER, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().CURE, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().GRAVITY, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().STOP, desiredMagicTier)
		WriteByte(magicTierStartAddress + GlobalConstants:GetMagic().AERO, desiredMagicTier)
	end
end