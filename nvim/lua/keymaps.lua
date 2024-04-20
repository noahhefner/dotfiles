local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Save
keymap("n", "zz", ":w<CR>", opts)

-- Window sizing and navigation
-- Go left
keymap("n", "<C-h>", "<C-w>h", opts)
-- Go right
keymap("n", "<C-l>", "<C-w>l", opts)
-- Go down
keymap("n", "<C-j>", "<C-w>k", opts)
-- Go up
keymap("n", "<C-k>", "<C-w>j", opts)
-- Top border up
keymap("n", "<A-Up>", ":resize -2<CR>", opts)
-- Top border down
keymap("n", "<A-Down>", ":resize +2<CR>", opts)
-- Left border left
keymap("n", "<A-Left>", ":vertical resize +2<CR>", opts)
-- Left border right
keymap("n", "<A-Right>", ":vertical resize -2<CR>", opts)
