local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Save
keymap("n", "zz", ":w<CR>", opts)

-- Window Navigation
-- Go left
keymap("n", "<C-h>", "<C-w>h", opts)
-- Go right
keymap("n", "<C-l>", "<C-w>l", opts)
-- Go down
keymap("n", "<C-j>", "<C-w>j", opts)
-- Go up
keymap("n", "<C-k>", "<C-w>k", opts)

-- Window Sizing
-- Top border up
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
-- Top border down
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
-- Left border left
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)
-- Left border right
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts)

-- Buffer Navigation
keymap("n", "<A-.>", ":bnext<CR>", opts)
keymap("n", "<A-,>", ":bprevious<CR>", opts)

-- Show/Hide Neotree
keymap("n", "fo", ":Neotree focus<CR>", opts)
keymap("n", "fc", ":Neotree close<CR>", opts)
