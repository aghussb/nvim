return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- ensure_installed = { "lua_ls", "ts_ls" },
        automatic_installation = true,
      })
    end,
  },
  -- {
  -- 	"WieeRd/auto-lsp.nvim",
  -- 	dependencies = { "neovim/nvim-lspconfig" },
  -- 	event = "VeryLazy",
  -- 	opts = {},
  -- 	config = function()
  -- 		require("auto-lsp").setup({
  -- 			["*"] = function()
  -- 				return {
  -- 					capabilities = require("cmp_nvim_lsp").default_capabilities(),
  -- 				}
  -- 			end,
  -- 		})
  -- 	end,
  -- },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      --Javascript/Typescript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.eslint.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
