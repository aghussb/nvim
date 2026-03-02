return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			-----------------------------------------------------------
			-- vtsls settings
			-----------------------------------------------------------
			local globalPlugins = opts.servers.vtsls.settings.vtsls.tsserver.globalPlugins
			table.insert(opts.servers.vtsls.filetypes, "vue")
			table.insert(globalPlugins, {
				name = "@vue/typescript-plugin",
				location = vim.env.MASON .. "/packages/vue-language-server/node_modules/@vue/language-server",
				enableForWorkspaceTypeScriptVersions = true,
				languages = { "vue" },
				configNamespace = "typescript",
			})

			-----------------------------------------------------------
			-- vue_ls lsp
			-----------------------------------------------------------
			opts.servers.vue_ls = {
				init_options = {
					vue = {
						hybridMode = true,
					},
				},
			}

			return opts
		end,
	},
	{
		"mfussenegger/nvim-lint",
		opts = {
			linters_by_ft = {
				svelte = { "eslint_d" },
			},
		},
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				svelte = { "prettierd", "prettier", stop_after_first = true },
			},
		},
	},
	{
		"L3MON4D3/LuaSnip",
		opts = {
			filetype_extend = {
				svelte = { "html", "javascript", "typescript" },
			},
		},
	},
}
