local settings = {}

settings.config = function()
	vim.g.lazygit_floating_window_scaling_factor = 1
	vim.g.lazygit_floating_window_border_chars = { "", "", "", "", "", "", "", "" }
	vim.g.lazygit_floating_window_use_plenary = 0
end

settings.keys = {
	{ "<leader>go", "<cmd>LazyGit<CR>", desc = "Open Lazygit" },
}

return settings
