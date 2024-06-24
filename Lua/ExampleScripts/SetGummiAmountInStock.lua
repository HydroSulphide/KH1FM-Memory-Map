LUAGUI_NAME = "SetGummiAmountInStock"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Amount of specified gummi in stock will be set to a given fixed value."

require("GlobalConstants")

local isSteamVersion = 0x232DD64

local gummiStartAddress = 0x2DF51D8
local amount = 99



-- Initalizing the script
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("SetGummiAmountInStock - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
		-- Set the Byte of the address of the item in stock to the desired amount
    	WriteByte(gummiStartAddress + GlobalConstants:GetGummi().ULTIMA_G, amount)
	end
end