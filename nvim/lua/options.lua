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

-- configure treesitter
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "lua",
    "markdown",
    "go",
    "bash",
    "css",
    "html",
    "json",
    "python",
    "javascript",
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
})

-- configure nvim-tree
local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.5

require('nvim-tree').setup({
  view = {
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = 'rounded',
          relative = 'editor',
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
        end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
})

-- configure telescope
require("telescope").setup({
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
      '--hidden',
    },
  },
  pickers = {
    find_files = {
      hidden = true;
    },
  },
})
