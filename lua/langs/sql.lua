return {
	-- {
	-- 	"neovim/nvim-lspconfig",
	-- 	opts = {
	-- 		servers = {
	-- 			sqlls = {},
	-- 		},
	-- 	},
	-- },
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				sql = { "sqlfluff" },
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				sql = {
					"sqlfluff",
				},
			},
			formatters = {
				sqlfluff = {
					command = "sqlfluff",
					args = { "format", "--dialect=postgres", "-" },
					stdin = true,
					cwd = function()
						return vim.fn.getcwd()
					end,
				},
			},
		},
	},
}
