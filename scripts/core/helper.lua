local helper = {}

function helper.format_name(aName)
	if string.find(aName, "_") then
		return string.gsub(" "..string.gsub(aName, "_" , " "), "%W%l", string.upper):sub(2)
	elseif string.find(aName, "-") then
		return string.gsub(" "..string.gsub(aName, "-" , " "), "%W%l", string.upper):sub(2)
	else
		return string.gsub(" "..aName, "%W%l", string.upper):sub(2)
	end
end

function helper.randomHash(length)
	local charset = {}  do -- [0-9a-zA-Z]
		for c = 48, 57  do table.insert(charset, string.char(c)) end
		for c = 65, 90  do table.insert(charset, string.char(c)) end
		for c = 97, 122 do table.insert(charset, string.char(c)) end
	end
	if not length or length <= 0 then return '' end
	math.randomseed(os.clock()^5)
	return helper.randomHash(length - 1) .. charset[math.random(1, #charset)]
end

return helper