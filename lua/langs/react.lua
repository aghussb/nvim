return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			-----------------------------------------------------------
			-- vtsls settings
			-----------------------------------------------------------
			table.insert(opts.servers.vtsls.filetypes, "javascriptreact")
			table.insert(opts.servers.vtsls.filetypes, "typescriptreact")
			return opts
		end,
	},
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				javascriptreact = {
					"eslint_d",
					"biomejs",
				},
				typescriptreact = {
					"eslint_d",
					"biomejs",
				},
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				javascriptreact = {
					"prettierd",
					"prettier",
					"biome",
					stop_after_first = true,
				},
				typescriptreact = {
					"prettierd",
					"prettier",
					"biome",
					stop_after_first = true,
				},
			},
		},
	},
	{
		"L3MON4D3/LuaSnip",
		opts = {
			filetype_extend = {
				javascriptreact = { "html" },
				typescriptreact = { "html", "javascriptreact" },
			},
		},
	},
}
