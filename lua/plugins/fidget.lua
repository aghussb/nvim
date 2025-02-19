return {
	-- "j-hui/fidget.nvim",
	-- config = function()
	-- 	require("fidget").setup({
	-- 		notification = {
	-- 			override_vim_notify = true, -- Automatically override vim.notify() with Fidget
	-- 		},
	-- 		-- window = { blend = 0 },
	-- 	})
	-- end,

	"vigoux/notifier.nvim",
	config = function()
		require("notifier").setup({
			components = { -- Order of the components to draw from top to bottom (first nvim notifications, then lsp)
				"nvim", -- Nvim notifications (vim.notify and such)
				"lsp", -- LSP status updates
			},
		})
	end,
}
