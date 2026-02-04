return {
	{
		"mfussenegger/nvim-lint",
		event = "VeryLazy",
		-- event = { "BufNewFile", "BufReadPost" },
		cmd = { "LintInfo" },
		opts = require("settings.linter.nvim-lint").opts,
		config = require("settings.linter.nvim-lint").config,
	},
	-- {
	-- 	"rachartier/tiny-inline-diagnostic.nvim",
	-- 	event = { "BufReadPre" },
	-- 	opts = require("settings.linter.tiny-inline-diagnostic").opts,
	-- },
}
