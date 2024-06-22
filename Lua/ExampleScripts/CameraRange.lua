LUAGUI_NAME = "CameraRange"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Sets the range of the standard camera orbit from straight under to straight above Sora"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local cameraMinAngle = -1.5
local cameraMaxAngle = 1.5



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("CameraRange - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Sets min angle straight under Sora
		WriteFloat(GlobalConstants:GetCamera().MIN_Y_ANGLE, cameraMinAngle)
		-- Sets max angle straight above Sora
		WriteFloat(GlobalConstants:GetCamera().MAX_Y_ANGLE, cameraMaxAngle)
	end
end