local settings = {}

settings.opts = {
	open_for_directories = true,
	floating_window_scaling_factor = 1,
	yazi_floating_window_border = "none",
	clipboard_register = "+",
}

settings.init = function()
	-- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
	-- vim.g.loaded_netrw = 1
	-- vim.g.loaded_netrwPlugin = 1

	vim.env.PATH = vim.env.PATH .. ":/home/linuxbrew/.linuxbrew/bin"
end

settings.keys = {
	{ "<leader>e", ":Yazi<CR>", desc = "Toggle Yazi" },
}

return settings
