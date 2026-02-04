return {
	-----------------------------------------------------------
	-- Color Schemes
	-----------------------------------------------------------
	{
		"navarasu/onedark.nvim",
		config = require("settings.startup.onedark").config,
	},
	-----------------------------------------------------------
	-- Plugins
	-----------------------------------------------------------
	{
		"nvim-lualine/lualine.nvim",
		config = false, -- jangan langsung setup
		-- enabled = false,
		-- opts = require("settings.ui.lualine").opts,
		-- config = require("settings.ui.lualine").config,
	},
}
