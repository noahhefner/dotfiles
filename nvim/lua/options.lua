-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true  -- set termguicolors to enable highlight groups
vim.opt.colorcolumn = "80"    -- column 80 line
vim.opt.number = true         -- enable line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.list = true           -- show invisible characters
vim.opt.mouse = "nv"          -- enable mouse for normal and visual modes
vim.opt.scrolloff = 8         -- lines of context
vim.opt.splitbelow = true     -- put new windows below current
vim.opt.splitright = true     -- put new vertical splits to right
vim.opt.tabstop = 2           -- tab is 2 spaces
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.expandtab = true

-- hide bottom bars
vim.opt.laststatus = 0
vim.opt.ruler = false
vim.opt.showcmd = false

-- enable everforest color scheme
vim.cmd([[colorscheme everforest]])

-- enable bufferline
require("bufferline").setup({
	options = {
		separator_style = "slant",
	},
})

-- configure lualine
require("lualine").setup({
  options = { 
    theme = 'everforest',
    component_separators = {
      left = '|',
      right = '|',
    },
  },
})
