local utils = {}

local function check_if_spec(file, extension)
	local pattern = "%.spec%." .. extension .. "$"
	return string.match(file, pattern) ~= nil
end

utils.check_if_spec_file = function(file)
	return check_if_spec(file, "ts") or check_if_spec(file, "js")
end

return utils
