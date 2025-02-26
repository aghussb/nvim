return {
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      [[ ,ggggggggggg,]],
      [[dP"""88""""""Y8,                                          ,dPYb, ,dPYb,             ,dPYb,]],
      [[Yb,  88      `8b                                          IP'`Yb IP'`Yb             IP'`Yb]],
      [[ `"  88      ,8P  gg                                 gg   I8  8I I8  8I             I8  8I]],
      [[     88aaaad8P"   ""                                 ""   I8  8' I8  8'             I8  8']],
      [[     88""""Y8ba   gg     ,g,      ,ggg,,ggg,,ggg,    gg   I8 dP  I8 dP    ,gggg,gg  I8 dPgg,]],
      [[     88      `8b  88    ,8'8,    ,8" "8P" "8P" "8,   88   I8dP   I8dP    dP"  "Y8I  I8dP" "8I]],
      [[     88      ,8P  88   ,8'  Yb   I8   8I   8I   8I   88   I8P    I8P    i8'    ,8I  I8P    I8]],
      [[     88_____,d8'_,88,_,8'_   8) ,dP   8I   8I   Yb,_,88,_,d8b,_ ,d8b,_ ,d8,   ,d8b,,d8     I8,]],
      [[    88888888P"  8P""Y8P' "YY8P8P8P'   8I   8I   `Y88P""Y88P'"Y888P'"Y88P"Y8888P"`Y888P     `Y8]],
    }

    -- dashboard.section.header.val = {
    --   "┳┓•    •┓┓  ┓ •      ┓        •      ┓ •",
    --   "┣┫┓┏┏┳┓┓┃┃┏┓┣┓┓┏┓┏┓┏┓┣┓┏┳┓┏┓┏┓┓┏┓┏┓┏┓┣┓┓┏┳┓",
    --   "┻┛┗┛┛┗┗┗┗┗┗┻┛┗┗┛ ┛ ┗┻┛┗┛┗┗┗┻┛┗┗┛ ┛ ┗┻┛┗┗┛┗┗",
    -- }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("q", " 🗙  Quit", ":qa<CR>"),
    }

    -- Set footer
    --   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
    --   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
    --   ```init.lua
    --   return require('packer').startup(function()
    --       use 'wbthomason/packer.nvim'
    --       use {
    --           'goolord/alpha-nvim', branch = 'feature/startify-fortune',
    --           requires = {'BlakeJC94/alpha-nvim-fortune'},
    --           config = function() require("config.alpha") end
    --       }
    --   end)
    --   ```
    -- local fortune = require("alpha.fortune")
    -- dashboard.section.footer.val = fortune()

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[
        autocmd FileType alpha setlocal nofoldenable
    ]])
  end,
}
