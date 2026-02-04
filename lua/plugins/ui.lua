return {
	-- {
	-- 	"akinsho/bufferline.nvim",
	-- 	event = { "BufReadPost" },
	-- 	dependencies = "nvim-tree/nvim-web-devicons",
	-- 	opts = require("settings.ui.bufferline").opts,
	-- 	keys = require("settings.ui.bufferline").keys,
	-- },
	{
		"echasnovski/mini.icons",
		event = "VeryLazy",
		config = require("settings.ui.mini-icons").config,
	},
	{
		"echasnovski/mini.indentscope",
		event = { "BufReadPre", "BufNewFile" },
		opts = require("settings.ui.mini-indentscope").opts,
		config = require("settings.ui.mini-indentscope").config,
	},
}
