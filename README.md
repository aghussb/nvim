<h1 align="center">Simple and Easy Customizable</h1>

> [!NOTE] 
> My nvim configuration is only used for text editors and git <i>but</i> feel free to <b>customize</b> it to better suit your coding style ✨.

<h3 align="center">Dashboard</h3>

![dashboard](https://github.com/user-attachments/assets/de600d4c-048d-423a-b090-6c8a129826ed)

<h3 align="center">Coding</h3>

![coding](https://github.com/user-attachments/assets/127a4295-8d0c-4b17-aeda-277d2dd7a4af)


## Table of contents
- [Requirement](#requirement)
- [Plugins](#plugins)
- [Shortcuts](#Shortcuts)
- [Language Configuration](#language-configuration)
  - [Leveraging existing config](#leveraging-existing-config)
  - [Using external plugins](#using-external-plugins)
- [Inspirations or Credits](#inspirations-or-credits)

## Requirement

| Programs  | Description                               |
| --------- | ------------------------------------- |
| `nvim`    | absolutely yes                         |
| `fd`      | for Telescope.nvim                    |
| `rg`      | for Telescope.nvim                    |
| `lazygit`     | For lazygit.nvim                        |

## Plugins

| Plugin                | For                  | Description                                                                 |
|-----------------------|----------------------|-----------------------------------------------------------------------------|
| [lazy.nvim](https://github.com/folke/lazy.nvim)             | Plugin Manager       | A fast and modern plugin manager for Neovim.                               |
| [alpha.nvim](https://github.com/goolord/alpha-nvim)            | Dashboard            | is a fast and fully programmable greeter for neovim                         |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)       | Buffer Management    | Provides a bufferline at the top of Neovim.                                |
| [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)            | Completion           | Completion source for buffers in nvim-cmp.                                 |
| [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)          | Completion           | Completion source for LSP in nvim-cmp.                                     |
| [cmp-path](https://github.com/hrsh7th/cmp-path)              | Completion           | Completion source for file paths in nvim-cmp.                               |
| [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)           | Completion           | Completion source for LuaSnip snippets in nvim-cmp.                         |
| [conform.nvim](https://github.com/stevearc/conform.nvim)          | Formatting           | Unified formatting for Neovim.                                             |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim)         | Diffing              | A single tabpage interface for git diffs.                                  |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim)           | LSP UI               | A UI for LSP progress and status in Neovim.                                |
| [friendly-snippets](https://github.com/rafamad2/friendly-snippets)     | Snippets             | A collection of commonly used snippets for LuaSnip.                         |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)         | Git Integration      | Git signs in the sign column.                                               |
| [lspkind.nvim](https://github.com/onsails/lspkind.nvim)          | LSP UI               | Adds icons to LSP completions.                                               |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)          | Statusline           | A blazing fast and easy to configure statusline/tabline for Neovim.        |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)               | Snippets             | A snippet engine for Neovim written in Lua.                                |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)  | LSP Management       | Bridges mason.nvim and nvim-lspconfig.                                      |
| [mason.nvim](https://github.com/williamboman/mason.nvim)            | Package Manager      | A portable package manager for Neovim that runs everywhere.              |
| [mini.icons](https://github.com/echasnovski/mini.nvim/tree/main/lua/mini/icons)            | Icons                | A collection of icons for Neovim.                                          |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)         | File Explorer        | A fast and customizable file explorer for Neovim.                            |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim)              | UI Components        | A UI component library for Neovim.                                         |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)        | Autopairs            | Automatically adds closing pairs for brackets, quotes, etc.                 |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)              | Completion           | A completion engine plugin for Neovim.                                     |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)        | LSP Configuration    | Quickstart configurations for the Nvim LSP client.                               |
| [nvim-surround](https://github.com/kylechui/nvim-surround)         | Text Objects         | Provides mappings to easily delete, change, and add surroundings in Neovim. |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)       | Syntax Highlighting  | Incremental parsing library for Neovim.                                     |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)     | Icons                | Adds language icons to Neovim.                                             |
| [onedark.nvim](https://github.com/navarasu/onedark.nvim)          | Colorscheme          | A dark colorscheme for Neovim.                                             |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)          | Lua Library          | A Lua library with common functions needed by plugins.                     |
| [telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) | Telescope Extension | A UI select extension for Telescope.                                       |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)        | Fuzzy Finder         | A highly extensible fuzzy finder over lists.                               |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)    | Todo Comments        | Highlight, list and search todo comments in your projects.                  |
| [vim-visual-multi](https://github.com/mg979/vim-visual-multi)      | Multiple Cursors     | Multiple cursors plugin for Neovim.                                        |
| [which-key.nvim](https://github.com/folke/which-key.nvim)        | Key Bindings         | Displays available keybindings in popup.                                   |
| [hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim)          | Code Highlighting    | Highlights code chunks.                                                    |
| [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)          | Git UI               | A lazygit UI within Neovim.                                                |

## Shortcuts

| Shortcut      | Keyboard            | Mode       | Description                                  |
|---------------|---------------------|------------|----------------------------------------------|
| `<leader>/`   | Space + /           | Normal     | Toggle comment line                          |
| `<leader>/`   | Space + /           | Visual     | Toggle comment block                         |
| `<C-c>`       | Ctrl + c            | Visual     | Copy selected text to system clipboard        |
| `<S-Down>`    | Shift + Down        | Visual     | Move the line down                           |
| `<S-Up>`      | Shift + Up          | Visual     | Move the line up                             |
| `<A-Left>`    | Alt + Left          | Normal     | Move to the left window                      |
| `<A-Down>`    | Alt + Down          | Normal     | Move to the down window                      |
| `<A-Up>`      | Alt + Up            | Normal     | Move to the up window                        |
| `<A-Right>`   | Alt + Right         | Normal     | Move to the right window                     |
| `<A-Left>`    | Alt + Left          | Terminal   | Move to the left window                      |
| `<A-Down>`    | Alt + Down          | Terminal   | Move to the down window                      |
| `<A-Up>`      | Alt + Up            | Terminal   | Move to the up window                        |
| `<A-Right>`   | Alt + Right         | Terminal   | Move to the right window                     |
| `<C-a>`       | Ctrl + a            | Normal     | Scroll up one page                           |
| `<esc>`       | Esc                 | Insert/Normal | Clear search highlights and exit insert mode |
| `[`           | [                   | Visual     | Indent selected text left                    |
| `]`           | ]                   | Visual     | Indent selected text right                   |
| `x`           | x                   | Normal/Visual/Operator-Pending | Delete character under cursor (without register) |
| `xx`          | xx                  | Normal     | Delete current line (without register)       |
| `X`           | X                   | Normal     | Delete current line to the start (without register)       |
| `<leader>lg`  | Space + lg          | Normal     | Open Lazygit                                 |
| `<leader>dh`  | Space + dh          | Normal     | Open Git history (repo)                      |
| `<leader>dt`  | Space + dt          | Normal     | Open Git history (current file)              |
| `<leader>dc`  | Space + dc          | Normal     | Close Diffview                               |
| `<Tab>dd`     | Tab + dd            | Normal     | Close current buffer                         |
| `<Tab>df`     | Tab + df            | Normal     | Force close current buffer                   |
| `<Tab>dr`     | Tab + dr            | Normal     | Close buffers to the right                   |
| `<Tab>dl`     | Tab + dl            | Normal     | Close buffers to the left                    |
| `<Tab>mn`     | Tab + mn            | Normal     | Move buffer to the right                     |
| `<Tab>mp`     | Tab + mp            | Normal     | Move buffer to the left                      |
| `<Tab>tp`     | Tab + tp            | Normal     | Toggle buffer pin                            |
| `<Tab><Right>`| Tab + Right Arrow   | Normal     | Go to next buffer                            |
| `<Tab><Left>` | Tab + Left Arrow    | Normal     | Go to previous buffer                        |
| `<Tab>p`      | Tab + p             | Normal     | Open buffer picker (Telescope)               |
| `<leader>fb`  | Space + fb          | Normal     | Fuzzy find in current buffer                 |
| `<leader>fs`  | Space + fs          | Normal     | Search document symbols (LSP)                |
| `K`           | K                   | Normal     | Show LSP hover documentation                 |
| `gd`          | gd                  | Normal     | Go to definition (LSP)                       |
| `<leader>ca`  | Space + ca          | Normal/Visual | LSP code action                              |
| `<leader>e`   | Space + e           | Normal     | Toggle Neo-tree                              |
| `<leader>gf`  | Space + gf          | Normal     | Format file (Conform)                        |
| `<leader>ff`  | Space + ff          | Normal     | Find files (Telescope)                       |
| `<leader>fg`  | Space + fg          | Normal     | Live grep search (Telescope)                 |

## Language Configuration

Language configuration is divided into 2 types :

### Leveraging existing config

Example of adding `typescript` language.
1. Type `:Mason` and install the LSP plugin that matches the language, for example `ts_ls` as LSP and `prettier` as Formatter.
2. Copy the file `./lua/langs/_lang.example` to `./lua/langs/ ` and rename it to `typescript.lua`.
3. Change the code of the newly added file, namely `typescript.lua`.
  - Added `ts_ls` LSP config.
```
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup({
	capabilities = capabilities,
})
```
  - Added `prettier` for formatter in conform.
```
local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		typescript = { "prettier" },
	},
})
```

> [!NOTE] 
> You can add some configs like snippet from luasnip, commentstring, etc.

4. Open file `./lua/langs/init.lua` and adding code `require("langs.typescript")` .

### Using external plugins

Example of adding `typescript` language and you want install this [typescript-tools](https://github.com/pmizio/typescript-tools.nvim).
1. Copy the file `./lua/langs/_lang.example` to `./lua/langs/ ` and rename it to `typescript.lua`.
2. Change the code of the newly added file, namely `typescript.lua`.
```
return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {},
}
```
<small>Source : [Install via lazy](https://github.com/pmizio/typescript-tools.nvim?tab=readme-ov-file#lazynvim)</small>

3. Open file `./lua/config/lazy.lua`, add code `{ import = "langs.typescript" },` in `spec = {`.

```
require("lazy").setup({
	spec = {
		-- Load plugins for languages
		{ import = "langs.typescript" },  <-- here

		-- Load plugins
		{ import = "plugins.lsp" },
		{ import = "plugins.coding" },
		{ import = "plugins.git" },
		{ import = "plugins.ui" },
		{ import = "plugins.utils" },
	},
})
```

## Inspirations or Credits

| Git Repo                                                    | For                                                                                              |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| [LazyVim](https://lazyvim.org)                          | Major portions of this configuration, including lazy-loading and plugin setups, etc. |
| [Gl00ria Nvim](https://github.com/Gl00ria/nvim) | Give me some inspiration about keymap documentation and folder structure organization. | 

