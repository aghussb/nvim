return {
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			-----------------------------------------------------------
			-- vtsls settings
			-----------------------------------------------------------
			local globalPlugins = opts.servers.vtsls.settings.vtsls.tsserver.globalPlugins

			table.insert(opts.servers.vtsls.filetypes, "svelte")
			table.insert(globalPlugins, {
				name = "typescript-svelte-plugin",
				location = vim.env.MASON .. "/packages/svelte-language-server/node_modules/typescript-svelte-plugin",
				enableForWorkspaceTypeScriptVersions = true,
				languages = { "svelte" },
				configNamespace = "typescript",
			})

			-----------------------------------------------------------
			-- svelte lsp
			-----------------------------------------------------------
			opts.servers.svelte = {
				on_attach = function(client)
					if client.name == "svelte" then
						vim.api.nvim_create_autocmd({ "BufWritePost", "BufWritePre" }, {
							pattern = { "*.js", "*.ts" },
							group = vim.api.nvim_create_augroup("svelte_ondidchangetsorjsfile", { clear = true }),
							callback = function(ctx)
								client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })

								vim.diagnostic.reset()
								client.notify("textDocument/didSave", {
									textDocument = { uri = vim.uri_from_bufnr(0) },
								})
							end,
						})
					end
				end,
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
