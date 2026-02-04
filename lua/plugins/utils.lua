return {
	{
		"danymat/neogen",
		opts = require("settings.utils.neogen").opts,
		keys = require("settings.utils.neogen").keys,
	},
	{
		"j-hui/fidget.nvim",
		event = "VeryLazy",
		opts = require("settings.utils.fidget").opts,
	},
	{
		"olimorris/persisted.nvim",
		cmd = {
			"SessionToggle",
			"SessionStart",
			"SessionStop",
			"SessionSave",
			"SessionSelect",
			"SessionLoad",
			"SessionLoadLast",
			"SessionLoadFromFile",
			"SessionDelete",
			"FzfLuaSessions",
		},
		opts = require("settings.utils.persisted").opts,
		config = require("settings.utils.persisted").config,
	},
	{
		"ibhagwan/fzf-lua",
		cmd = "FzfLua",
		dependencies = { "echasnovski/mini.icons" },
		opts = require("settings.utils.fzf-lua").opts,
		keys = require("settings.utils.fzf-lua").keys,
	},
	{
		"mikavilpas/yazi.nvim",
		opts = require("settings.utils.yazi").opts,
		keys = require("settings.utils.yazi").keys,
	},
	{
		"MagicDuck/grug-far.nvim",
		opts = require("settings.utils.grug-far").opts,
		keys = require("settings.utils.grug-far").keys,
	},
	{
		"mg979/vim-visual-multi",
		event = "BufReadPre",
		init = require("settings.utils.vim-visual-multi").init,
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
	},
	{
		"folke/todo-comments.nvim",
		event = "BufReadPost",
		opts = require("settings.utils.todo-comments").opts,
		keys = require("settings.utils.todo-comments").keys,
	},
	{
		"folke/ts-comments.nvim",
		event = "BufReadPre",
		opts = require("settings.utils.ts-comments").opts,
	},
	{
		"echasnovski/mini.surround",
		event = { "BufReadPre" },
		opts = require("settings.utils.mini-surround").opts,
	},
	{
		"echasnovski/mini.pairs",
		event = "InsertEnter",
		opts = require("settings.utils.mini-pairs").opts,
	},
	{
		"echasnovski/mini.comment",
		event = "BufReadPre",
		opts = require("settings.utils.mini-comment").opts,
	},
}
