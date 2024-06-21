FontHelper = {}

function FontHelper:StringTableToKingdomHeartsByteTable(stringTable)
	local byteTable = {}
	for _, v in pairs(stringTable) do
		if type(v) == "number" then
			if v == GlobalConstants:GetFont().NEW_PAGE then
				table.insert(byteTable, 0x0F)
				table.insert(byteTable, 0x01)
			else
				table.insert(byteTable, v)
			end
		else if type(v) == "string" then
			local byteTableSegment = FontHelper:StringToKindomHeartsByteTable(v)
			for _, v in pairs(byteTableSegment) do
				table.insert(byteTable, v)
			end
		end
		end
	end
	return byteTable
end


function FontHelper:StringToKindomHeartsByteTable(stringToConvert)
	local byteTable = {}
	-- using utf8 for special characters like '★'
	for _, c in utf8.codes(stringToConvert) do
		table.insert(byteTable, GlobalConstants:GetFont()[utf8.char(c)])
	end
	return byteTable
end

function FontHelper:GetTableLength(table)
	local length = 0
	for _ in pairs(table) do
		length = length + 1
	end
	return length
end

return FontHelper