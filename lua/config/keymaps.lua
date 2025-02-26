-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █                       █
-- █     Custom Keymap     █
-- █                       █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Toggle comment line in normal mode
vim.keymap.set("n", "<leader>/", ":normal gcc<CR>", { desc = "Toggle comment line" })

-- Toggle comment block in visual mode
vim.keymap.set("v", "<leader>/", "<Esc>:normal gvgc<CR>", { desc = "Toggle comment block" })

-- Copy text to other program
vim.keymap.set("v", "<C-c>", '"+y', { desc = "Toggle comment block" })

-- Move the line down
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "Move the line down" })
-- Move the line up
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "Move the line up" })
-- If you good with HJKL, you can uncomment
-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- In normal mode, use to switch to the left window
vim.keymap.set("n", "<A-Left>", "<C-w>h")
-- In normal mode, use to switch to the down window
vim.keymap.set("n", "<A-Down>", "<C-w>j")
-- In normal mode, use to switch to the up window
vim.keymap.set("n", "<A-Up>", "<C-w>k")
-- In normal mode, use to switch to the right window
vim.keymap.set("n", "<A-Right>", "<C-w>l")

-- In terminal mode, use to switch to the left window
vim.keymap.set("t", "<A-Left>", "<cmd>wincmd h<CR>")
-- In terminal mode, use to switch to the down window
vim.keymap.set("t", "<A-Down>", "<cmd>wincmd j<CR>")
-- In terminal mode, use to switch to the up window
vim.keymap.set("t", "<A-Up>", "<cmd>wincmd k<CR>")
-- In terminal mode, use to switch to the right window
vim.keymap.set("t", "<A-Right>", "<cmd>wincmd l<CR>")

-- Change switch <Ctrl+u> for move up by half page  to <Ctrl+a> in normal mode
vim.keymap.set("n", "<C-a>", "<C-u>")

-- In insert and normal mode, pressing <Esc> clears search highlights before exiting to normal mode
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>")

-- In visual mode, use "[" to shift text left and "]" to shift text right
vim.keymap.set("v", "[", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", "]", ">gv", { noremap = true, silent = true })

-- Prevent "x" from yanking deleted text (Normal, Visual, Operator-pending mode)
vim.api.nvim_set_keymap("n", "x", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "x", '"_d', { noremap = true, silent = true })
vim.api.nvim_set_keymap("o", "x", '"_d', { noremap = true, silent = true })

-- Prevent "xx" and "X" from yanking deleted lines (Normal mode)
vim.api.nvim_set_keymap("n", "xx", '"_dd', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "X", '"_D', { noremap = true, silent = true })

-- ████████████████████████████████end████████████████████████████████████

-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █                       █
-- █          Git          █
-- █                       █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Open Lazygit
vim.keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Open Lazygit" })

-- Open Git file history for the entire repository
vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<CR>", { desc = "Open Git history (repo)" })

-- Open Git file history for the current file
vim.keymap.set("n", "<leader>dt", "<cmd>DiffviewFileHistory %<CR>", { desc = "Open Git history (current file)" })

-- Close Diffview panel
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })

-- ████████████████████████████████end████████████████████████████████████

-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █                       █
-- █          Tab          █
-- █                       █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Close the current buffer
vim.keymap.set("n", "<Tab>dd", ":bd<CR>", { desc = "Close current buffer" })

-- Force close the current buffer (discard unsaved changes)
vim.keymap.set("n", "<Tab>df", ":bd!<CR>", { desc = "Force close current buffer" })

-- Close all buffers to the right of the current buffer
vim.keymap.set("n", "<Tab>dr", ":BufferLineCloseRight<CR>", { desc = "Close buffers to the right" })

-- Close all buffers to the left of the current buffer
vim.keymap.set("n", "<Tab>dl", ":BufferLineCloseLeft<CR>", { desc = "Close buffers to the left" })

-- Move the current buffer to the right
vim.keymap.set("n", "<Tab>mn", ":BufferLineMoveNext<CR>", { desc = "Move buffer to the right" })

-- Move the current buffer to the left
vim.keymap.set("n", "<Tab>mp", ":BufferLineMovePrev<CR>", { desc = "Move buffer to the left" })

-- Toggle pin for the current buffer
vim.keymap.set("n", "<Tab>tp", ":BufferLineTogglePin<CR>", { desc = "Toggle buffer pin" })

-- Switch to the next buffer in the bufferline
vim.keymap.set("n", "<Tab><Right>", ":BufferLineCycleNext<CR>", { desc = "Go to next buffer" })

-- Switch to the previous buffer in the bufferline
vim.keymap.set("n", "<Tab><Left>", ":BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })

-- Open Telescope buffer picker to quickly switch between open buffers
vim.keymap.set("n", "<Tab>p", require("telescope.builtin").buffers, { desc = "Open buffer picker (Telescope)" })

-- ████████████████████████████████end████████████████████████████████████

-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █                       █
-- █        Buffer         █
-- █                       █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Fuzzy search within the current buffer using Telescope
vim.keymap.set(
	"n",
	"<leader>fb",
	"<cmd>Telescope current_buffer_fuzzy_find<CR>",
	{ desc = "Fuzzy find in current buffer" }
)

-- Search and list document symbols (functions, variables, etc.) using LSP in the current file
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Search document symbols (LSP)" })

-- ████████████████████████████████end████████████████████████████████████

-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █                       █
-- █        Coding         █
-- █                       █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

-- Show hover documentation using LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show LSP hover documentation" })

-- Go to the definition of the symbol under the cursor
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition (LSP)" })

-- Trigger LSP code actions (e.g., quick fixes, refactoring)
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP code action" })

-- Toggle Neo-tree file explorer on the left side
vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", { desc = "Toggle Neo-tree" })

-- Format code using Conform.nvim with LSP fallback
vim.keymap.set("n", "<leader>gf", function()
	require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 500 })
end, { desc = "Format file (Conform)" })

-- Open Telescope to find files in the project
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find files (Telescope)" })

-- Open Telescope for live grep search across the project
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Live grep search (Telescope)" })

-- ████████████████████████████████end████████████████████████████████████
