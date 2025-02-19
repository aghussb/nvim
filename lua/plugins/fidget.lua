return {
  "j-hui/fidget.nvim",
  config = function()
    require("fidget").setup({
      window = {
        blend = 0,
        relative = "editor",
      },
    })
  end,
  tag = "legacy",
}
