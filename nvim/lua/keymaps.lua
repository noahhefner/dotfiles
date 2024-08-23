local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

keymap("n", "mb", "G", opts)  -- cursor to bottom of file
keymap("n", "mt", "gg", opts) -- cursor to top of file
keymap("n", "H", "0", opts)   -- cursor to beginning of line
keymap("n", "L", "$", opts)   -- cursor to end of line

keymap("n", "zz", ":w<CR>", opts)   -- save
keymap("n", "zq", ":wq<CR>", opts)  -- save and quit

-- Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)  -- go left
keymap("n", "<C-l>", "<C-w>l", opts)  -- go right
keymap("n", "<C-j>", "<C-w>j", opts)  -- go down
keymap("n", "<C-k>", "<C-w>k", opts)  -- go up

-- Window Sizing
keymap("n", "<A-Up>", ":resize -2<CR>", opts)             -- top border up
keymap("n", "<A-Down>", ":resize +2<CR>", opts)           -- top border down
keymap("n", "<A-Left>", ":vertical resize -2<CR>", opts)  -- left border left
keymap("n", "<A-Right>", ":vertical resize +2<CR>", opts) -- left border right

-- Buffer Navigation
keymap("n", "<A-.>", ":bnext<CR>", opts)      -- next buffer
keymap("n", "<A-,>", ":bprevious<CR>", opts)  -- previous buffer
keymap("n", "<A-d>", ":bd<CR>", opts)         -- delete current buffer

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", {})  -- find files
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", {})   -- live grep
keymap("n", "<leader>fb", ":Telescope buffers<CR>", {})     -- buffers
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", {})   -- help tags

in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
    vim.g.clipboard = {
        name = 'wsl clipboard',
        copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
        paste = { ["+"] = { "nvim_paste" }, ["*"] = { "nvim_paste" } },
        cache_enabled = true
    }
end
