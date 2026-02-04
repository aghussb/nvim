return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				jsonls = {
					before_init = function(opts)
						opts.settings.json.schemas = require("schemastore").json.schemas()
						return opts
					end,
					settings = {
						json = {
							format = {
								enable = true,
							},
							validate = { enable = true },
						},
					},
				},
			},
		},
		dependencies = {
			"b0o/schemastore.nvim",
		},
	},
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				json = { "jsonlint" },
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				json = { "fixjson" },
			},
		},
	},
}
