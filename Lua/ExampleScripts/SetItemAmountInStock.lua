LUAGUI_NAME = "SetItemAmountInStock"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Amount of specified item in stock will be set to a given fixed value."

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local stockStartAddress = 0x2DE97F9
local amount = 99



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("SetItemAmountInStock - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Set the Byte of the address of the item in stock to the desired amount
    	WriteByte(stockStartAddress + GlobalConstants:GetItems().POWER_UP, amount)
	end
end