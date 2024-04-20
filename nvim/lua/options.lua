-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.number = true -- enable line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.list = true -- show invisible characters
vim.opt.mouse = "nv" -- enable mouse for normal and visual modes
vim.opt.scrolloff = 8 -- lines of context
vim.opt.splitbelow = true -- put new windows below current
vim.opt.splitright = true -- put new vertical splits to right
vim.opt.tabstop = 2
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

-- format on save with conform package
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

-- enable bufferline
require("bufferline").setup({
	options = {
		separator_style = "slant",
		offsets = {
			{
				filetype = "neo-tree",
				text = "File Explorer",
				text_align = "center",
				separator = true,
			},
		},
	},
})
