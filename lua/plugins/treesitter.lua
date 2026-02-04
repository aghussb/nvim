return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	branch = "master",
	event = { "BufReadPre" },
	dependencies = {
		{
			"andymass/vim-matchup",
		},
		-- {
		-- 	"nvim-treesitter/nvim-treesitter-context",
		-- 	opts = require("settings.treesitter.nvim-treesitter-context").opts,
		-- },
	},
	config = require("settings.treesitter.nvim-treesitter").config,
}
