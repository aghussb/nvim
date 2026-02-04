return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				cssls = {
					enable = false,
					capabilities = {
						textDocument = {
							completion = {
								completionItem = {
									snippetSupport = true,
								},
							},
						},
					},
					settings = {
						css = {
							lint = {
								unknownAtRules = "ignore",
							},
						},
						svelte = {
							lint = {
								unknownAtRules = "ignore",
							},
						},
						scss = {
							lint = {
								unknownAtRules = "ignore",
							},
						},
						less = {
							lint = {
								unknownAtRules = "ignore",
							},
						},
					},
				},
				tailwindcss = {
					settings = {
						tailwindCSS = {
							classAttributes = { "class", "className", "class:list", "classList", "ngClass" },
						},
					},
				},
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				css = { "prettierd", "prettier", stop_after_first = true },
			},
		},
	},
}
