local settings = {}

settings.keys = {
	{ "<leader>gd", "<cmd>DiffviewFileHistory<CR>", desc = "Open Git history (repo)" },
	{ "<leader>gf", "<cmd>DiffviewFileHistory %<CR>", desc = "Open Git history (current file)" },
	{ "<leader>gc", "<cmd>DiffviewClose<CR>", desc = "Close Diffview" },
}

return settings
