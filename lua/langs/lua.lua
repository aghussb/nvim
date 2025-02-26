-- Set up nvim-cmp integration with LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

-- Set up conform for formatting
local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
})

