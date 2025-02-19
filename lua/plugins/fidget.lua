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
      -- You configuration here
    })
  end,
}
