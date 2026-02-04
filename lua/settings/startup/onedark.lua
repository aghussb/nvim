local settings = {}

settings.config = function()
	local onedark = require("onedark")
	onedark.setup({
		style = "deep",
	})
	-- onedark.load()
end

return settings
