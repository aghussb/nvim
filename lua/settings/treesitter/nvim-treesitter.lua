local settings = {}

settings.config = function()
	local configs = require("configs")

	local treesitter_configs = require("nvim-treesitter.configs")

	treesitter_configs.setup({
		ensure_installed = configs.treesitter,
		sync_install = true,
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return settings
