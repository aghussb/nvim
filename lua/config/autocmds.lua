-- Automatically update the terminal background color to match Neovim's background color
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
	callback = function()
		-- Get the current background color of the Normal highlight group
		local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
		if not normal.bg then
			return -- Exit if no background color is set
		end
		-- Send an escape sequence to change the terminal background color
		io.write(string.format("\027]11;#%06x\027\\", normal.bg))
	end,
})

-- Restore the terminal background color to its default when exiting Neovim
vim.api.nvim_create_autocmd("UILeave", {
	callback = function()
		-- Send an escape sequence to reset the terminal background color
		io.write("\027]111\027\\")
	end,
})

