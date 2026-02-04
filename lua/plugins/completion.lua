return {
	-- "hrsh7th/nvim-cmp",
	-- event = "VeryLazy",
	-- dependencies = {
	-- 	"hrsh7th/cmp-nvim-lsp",
	-- 	"hrsh7th/cmp-path",
	-- 	"hrsh7th/cmp-buffer",
	-- 	"hrsh7th/cmp-cmdline",
	--      "ray-x/cmp-treesitter",
	-- 	{
	-- 		"L3MON4D3/LuaSnip",
	-- 		event = "InsertEnter",
	-- 		config = require("settings.completion.LuaSnip").config,
	--         build = "make install_jsregexp"
	-- 	},
	-- 	"saadparwaiz1/cmp_luasnip",
	-- 	"rafamadriz/friendly-snippets",
	-- },
	-- config = require("settings.completion.nvim-cmp").config,

	"saghen/blink.cmp",
	event = "VeryLazy",
	-- event = { "InsertEnter", "CmdlineEnter" },
	version = "1.*",
	opts = require("settings.completion.blink").opts,
	opts_extend = {
		-- "sources.completion.enabled_providers",
		-- "sources.compat",
		"sources.default",
	},
	dependencies = {
		"rafamadriz/friendly-snippets",
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
			-- build = "make install_jsregexp",
			opts = require("settings.completion.LuaSnip").opts,
			config = require("settings.completion.LuaSnip").config,
		},
		-- {
		-- 	"saghen/blink.compat",
		-- 	opts = {},
		-- 	version = "*",
		-- },
	},
}
