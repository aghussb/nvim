return {
	{
		"sindrets/diffview.nvim",
		cmd = {
			"DiffviewOpen",
			"DiffviewFileHistory",
			"DiffviewClose",
			"DiffviewFocusFiles",
			"DiffviewLog",
			"DiffviewRefresh",
			"DiffviewToggleFiles",
		},
		keys = require("settings.git.diffview").keys,
	},
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = require("settings.git.gitsigns").opts,
		enabled = require("settings.git.gitsigns").enabled,
	},
	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
			"LazyGitLog",
		},
		keys = require("settings.git.lazygit").keys,
		config = require("settings.git.lazygit").config,
	},
}
