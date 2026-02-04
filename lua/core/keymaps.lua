local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Window Navigation
-----------------------------------------------------------
map("n", "<A-Left>", "<C-w>h", opts)
map("n", "<A-Down>", "<C-w>j", opts)
map("n", "<A-Up>", "<C-w>k", opts)
map("n", "<A-Right>", "<C-w>l", opts)

map("t", "<A-Left>", "<cmd>wincmd h<CR>", opts)
map("t", "<A-Down>", "<cmd>wincmd j<CR>", opts)
map("t", "<A-Up>", "<cmd>wincmd k<CR>", opts)
map("t", "<A-Right>", "<cmd>wincmd l<CR>", opts)

-----------------------------------------------------------
-- Resize Window
-----------------------------------------------------------
-- map("n", "<C-Up>", ":resize -2<CR>")
-- map("n", "<C-Down>", ":resize +2<CR>")
-- map("n", "<C-Left>", ":vertical resize -2<CR>")
-- map("n", "<C-Right>", ":vertical resize +2<CR>")

-- terminal
-- map("t", "<C-Up>", "<cmd>resize -2<CR>")
-- map("t", "<C-Down>", "<cmd>resize +2<CR>")
-- map("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
-- map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")

-----------------------------------------------------------
-- Commenting
-----------------------------------------------------------
-- map("n", "<leader>/", ":normal gcc<CR>", { unpack(opts), desc = "Toggle comment line" })
-- map("v", "<leader>/", "<Esc>:normal gvgc<CR>", { unpack(opts), desc = "Toggle comment block" })

-----------------------------------------------------------
-- Move Lines
-----------------------------------------------------------
map("v", "<S-Down>", ":m '>+1<CR>gv=gv", { unpack(opts), desc = "Move the line down" })
map("v", "<S-Up>", ":m '<-2<CR>gv=gv", { unpack(opts), desc = "Move the line up" })

-----------------------------------------------------------
-- Indentation
-----------------------------------------------------------
map("v", "[", "<gv", opts)
map("v", "]", ">gv", opts)

-----------------------------------------------------------
-- Yank
-----------------------------------------------------------
map("x", "p", "P", opts)
map("x", "y", "ygv<Esc>", opts)

-----------------------------------------------------------
-- Delete without yanking
-----------------------------------------------------------
map("n", "x", '"_d', opts)
map("x", "x", '"_d', opts)
map("o", "x", '"_d', opts)
map("n", "xx", '"_dd', opts)
map("n", "X", '"_D', opts)

-----------------------------------------------------------
-- Misc
-----------------------------------------------------------
map({ "n", "v" }, "<C-a>", "<C-u>zz", opts)
map({ "n", "v" }, "<C-d>", "<C-d>zz", opts)
-- map({ "n", "v" }, "<Up>", "<Up>zz", opts)
-- map({ "n", "v" }, "<Down>", "<Down>zz", opts)
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts)
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
