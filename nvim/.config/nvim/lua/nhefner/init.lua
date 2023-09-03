require("nhefner.plugins")
require("nhefner.keymaps")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.number = true          -- enable line numbers
vim.opt.relativenumber = true  -- relative line numbers
vim.opt.list = true            -- show invisible characters
vim.opt.mouse = "nv"           -- enable mouse for normal and visual modes
vim.opt.scrolloff = 8          -- lines of context
vim.opt.splitbelow = true      -- put new windows below current
vim.opt.splitright = true      -- put new vertical splits to right
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.expandtab = true

-- hide bottom bars
vim.opt.laststatus = 0
vim.opt.ruler = false
vim.opt.showcmd = false

-- nvim-tree
require("nvim-tree").setup({
  -- show git folders
  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  }
})

-- Treesitter
require("nvim-treesitter.configs").setup({
  highlight = {
    enable = true
  }
})

-- Telescope
require('telescope').setup {
  pickers = {
    find_files = {
      -- show hidden files
      hidden = "true"
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
}
require('telescope').load_extension('fzf')

-- Catppuccin color theme
require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
})
vim.cmd.colorscheme "catppuccin"

-- Barbar
vim.g.barbar_auto_setup = false
require'barbar'.setup {
  sidebar_filetypes = {
    -- offset the tabs because of nvim tree
    NvimTree = true,
  }
}
