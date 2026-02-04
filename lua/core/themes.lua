local configs = require("configs")

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function(args)
		package.loaded["themes." .. args.match] = nil
		pcall(require, "themes." .. args.match)
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.defer_fn(function()
			vim.cmd.colorscheme(configs.colorscheme)
		end, 20)
	end,
})
