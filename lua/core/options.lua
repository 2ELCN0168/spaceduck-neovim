-- GENERAL OPTIONS
vim.opt.clipboard:append("unnamed", "unnamedplus") -- use system clipboard
vim.opt.mouse = "a" -- allow the mouse to be used in Nvim
vim.opt.termguicolors = true

-- INTERFACE
vim.opt.number = true
-- vim.cmd("colorscheme tokyonight")

-- CODE
vim.opt.expandtab = true -- tabs are spaces, mainly because of python
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, insert mode start position

-- SEARCHING
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = false -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- SPLIT WINDOWS
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
