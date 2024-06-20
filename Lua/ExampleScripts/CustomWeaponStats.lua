LUAGUI_NAME = "CustomWeaponStats"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Alters all stats of a defined Weapon"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local weaponStatStartAddress = 0x2d2c238



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("CustomWeaponStats - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Sets Strength of Kindom Key to 14 like Ultima Weapon
		WriteByte(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().STRENGTH, 14)
		-- Sets Critical Rate of Kindom Key to 200 like Wishing Star (always crititcal)
		WriteByte(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().CRITICAL_RATE, 200)
		-- Sets Critical Bonus of Kindom Key to 16 like One-Winged Angel
		WriteByte(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().CRITICAL_BONUS, 16)
		-- Sets Recoil of Kindom Key to 90 like Ultima Weapon
		WriteByte(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().RECOIL, 90)
		-- Sets MP of Kindom Key to 3 like Diamond Dust
		WriteByte(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().MP, 3)
		-- Sets Model of Kindom Key to Dream Sword
		WriteString(GlobalConstants:GetWeaponStatPointers().KINGDOM_KEY + GlobalConstants:GetWeaponStatOffsets().MODEL, GlobalConstants:GetWeaponModels().DREAM_SWORD_MODEL)
	end
end