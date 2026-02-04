local settings = {}

settings.init = function()
	vim.g.VM_default_mappings = 0
	vim.g.VM_maps = {
		["Find Under"] = "<C-n>",
		-- If you good with HJKL, you can uncomment
		["Select Cursor Down"] = "<C-Down>",
		["Select Cursor Up"] = "<C-Up>",
		["Select h"] = "<S-left>",
		["Select l"] = "<S-right>",
		["Select All"] = "\\A",
		["I Return"] = "",
		["I Down Arrow"] = "",
		["I Up Arrow"] = "",
	}

	vim.cmd([[autocmd BufWrite * try | call vm#reset() | catch | endtry]])
end

return settings
