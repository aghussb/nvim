return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				biome = {},
				vtsls = {
					filetypes = { "javascript" },
					settings = {
						complete_function_calls = true,
						vtsls = {
							tsserver = {
								globalPlugins = {},
							},
							enableMoveToFileCodeAction = true,
							autoUseWorkspaceTsdk = true,
							experimental = {
								maxInlayHintLength = 30,
								completion = {
									enableServerSideFuzzyMatch = true,
								},
							},
						},
						typescript = {
							updateImportsOnFileMove = { enabled = "always" },
							suggest = {
								completeFunctionCalls = true,
							},
							inlayHints = {
								enumMemberValues = { enabled = true },
								functionLikeReturnTypes = { enabled = true },
								parameterNames = { enabled = "literals" },
								parameterTypes = { enabled = true },
								propertyDeclarationTypes = { enabled = true },
								variableTypes = { enabled = false },
							},
						},
					},
				},
			},
		},
	},
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				javascript = {
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
				js = {
					"prettierd",
					"prettier",
					"biome",
					stop_after_first = true,
				},
			},
		},
	},
}
