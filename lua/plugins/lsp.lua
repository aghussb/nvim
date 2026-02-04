return {
	"neovim/nvim-lspconfig",
	event = {
		"BufReadPre",
		-- "BufNewFile",
	},
	opts = require("settings.lsp.nvim-lspconfig").opts,
	config = require("settings.lsp.nvim-lspconfig").config,
	dependencies = {
		{
			"mason-org/mason.nvim",
			cmd = {
				"Mason",
				"MasonInstall",
				"MasonUninstall",
				"MasonUninstallAll",
				"MasonUpdate",
				"MasonLog",
				"MasonRegistryInstall",
			},
			config = require("settings.lsp.mason").config,
		},
	},
	keys = require("settings.lsp.nvim-lspconfig").keys,
}
