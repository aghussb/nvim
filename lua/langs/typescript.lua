-- Already load in javascript.lua
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	capabilities = capabilities,
})

-- Set up conform for formatting
local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		typescript = { "prettier" },
	},
})

-- Set up another config luasnip
local luasnip = require("luasnip")
luasnip.filetype_extend("typescript", { "javascript" })
