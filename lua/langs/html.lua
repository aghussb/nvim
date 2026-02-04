local html_support_langs = {
	"html",
	"htmldjango",
	"typescriptreact",
	"javascriptreact",
	"erb",
	"svelte",
	"vue",
	"blade",
	"php",
	"templ",
	"astro",
}

return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			servers = {
				html = {
					capabilities = {
						textDocument = {
							completion = {
								completionItem = {
									snippetSupport = true,
								},
							},
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
				html = { "prettierd", "prettier", stop_after_first = true },
			},
		},
	},
	{
		"mattn/emmet-vim",
		ft = html_support_langs,
		init = function()
			vim.g.user_emmet_leader_key = "<C-e>"
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		ft = html_support_langs,
		opts = {
			opts = {
				enable_close = true,
				enable_rename = true,
				enable_close_on_slash = false,
			},
		},
	},
}
