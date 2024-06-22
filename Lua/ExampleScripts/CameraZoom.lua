LUAGUI_NAME = "CameraZoom"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Makes the camera more zoomed out"

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local standardLocalOffsetX = 550
local standardRotationY = 0.3

local lockOnLocalOffsetX = 500
local lockOnRotationY = -200

local climbLocalOffsetX = 600
local climbRotationY = -200

local hangLocalOffsetX = 600
local hangRotationY = -200

local poleLocalOffsetX = 600
local poleRotationY = -200

local wallLocalOffsetX = -400
local wallLocalOffsetZ = -250

local slideLocalOffsetX = 600



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("CameraZoom - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- sets the distance to Sora
		WriteFloat(GlobalConstants:GetCamera().STANDARD.LOCAL_OFFSET_X, standardLocalOffsetX)
		-- set orbit rotation around Soras y-axis
		WriteFloat(GlobalConstants:GetCamera().STANDARD.ROTATION_Y, standardRotationY)
		
		WriteFloat(GlobalConstants:GetCamera().LOCK_ON.LOCAL_OFFSET_X, lockOnLocalOffsetX)
		WriteFloat(GlobalConstants:GetCamera().LOCK_ON.ROTATION_Y, lockOnRotationY)
		
		WriteFloat(GlobalConstants:GetCamera().CLIMB.LOCAL_OFFSET_X, climbLocalOffsetX)
		WriteFloat(GlobalConstants:GetCamera().CLIMB.ROTATION_Y, climbRotationY)
		
		WriteFloat(GlobalConstants:GetCamera().HANG.LOCAL_OFFSET_X, hangLocalOffsetX)
		WriteFloat(GlobalConstants:GetCamera().HANG.ROTATION_Y, hangRotationY)
		
		WriteFloat(GlobalConstants:GetCamera().POLE.LOCAL_OFFSET_X, poleLocalOffsetX)
		WriteFloat(GlobalConstants:GetCamera().POLE.ROTATION_Y, poleRotationY)
		
		WriteFloat(GlobalConstants:GetCamera().WALL.LOCAL_OFFSET_X, wallLocalOffsetX)
		WriteFloat(GlobalConstants:GetCamera().WALL.LOCAL_OFFSET_Z, wallLocalOffsetZ)
		
		WriteFloat(GlobalConstants:GetCamera().SLIDE.LOCAL_OFFSET_X, slideLocalOffsetX)
	end
end