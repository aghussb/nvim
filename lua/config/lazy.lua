local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	-- bootstrap lazy.nvim
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- Load plugins for languages
		-- { import = "langs.typescript" },

		-- Load plugins
		{ import = "plugins.lsp" },
		{ import = "plugins.coding" },
		{ import = "plugins.git" },
		{ import = "plugins.ui" },
		{ import = "plugins.utils" },
	},
})
