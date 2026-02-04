local settings = {}

local function capslock_status()
	local handle = io.popen("xset q | grep Caps | awk '{print $4}'")

	if handle == nil then
		return
	end

	local result = handle:read("*a")
	handle:close()

	if result:match("on") then
		return "CAPSLOCK"
	else
		return ""
	end
end

settings.opts = {
	sections = {
		lualine_x = {
			{
				capslock_status,
				colored = true,
				separator = {
					left = "",
				},
				color = {
					fg = require("core.colors").lualine.capslock.fg,
					bg = require("core.colors").lualine.capslock.bg,
					gui = "bold",
				},
			},
			{
				function()
					return ""
				end,
				draw_empty = true,
				separator = { left = "", right = "" },
				color = {
					fg = require("core.colors").lualine.separator.fg,
					bg = require("core.colors").lualine.separator.bg,
				},
			},
			"encoding",
			"fileformat",
			"filetype",
		},
	},
}

settings.config = function(_, opts)
	require("lualine").setup(opts)
end

return settings
