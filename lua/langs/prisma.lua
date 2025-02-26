-- Set up nvim-cmp integration with LSP
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.prismals.setup({
	capabilities = capabilities,
})

-- Create an autocommand for unknown filetype to set the comment string format
vim.api.nvim_create_autocmd("FileType", {
	pattern = "prisma",
	callback = function()
		vim.opt_local.commentstring = "//%s"
	end,
})
