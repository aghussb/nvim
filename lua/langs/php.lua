return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				phpactor = {},
				intelephense = {},
			},
		},
	},
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				-- php = { "phpcs" },
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				php = { "php_cs_fixer" },
				blade = { "blade-formatter" },
			},
		},
	},
}
