return {
	{
		"goolord/alpha-nvim",
		lazy = false,
		dependencies = {
			"echasnovski/mini.icons",
		},
		config = require("settings.startup.alpha-nvim").config,
	},
	-- {
	-- 	"echasnovski/mini.starter",
	-- 	lazy = false,
	-- 	config = require("settings.startup.mini-starter").config,
	-- },
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
	},
}
