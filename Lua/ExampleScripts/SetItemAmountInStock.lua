LUAGUI_NAME = "SetItemAmountInStock"
LUAGUI_AUTH = "HydroSulphide"
LUAGUI_DESC = "Amount of specified item in stock will be set to a given fixed value."


isSteamVersion = 0x232DD64

stockStartAddress = 0x2DE97F9

itemID = 0x98 -- 0x98 = Power Up
amount = 99 



function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
		ConsolePrint("SetItemAmountInStock - installed")
	end
end



function _OnFrame()
	if ReadInt(isSteamVersion) == 0x41455453 then
    	WriteByte(stockStartAddress + itemID, amount)
	end
end