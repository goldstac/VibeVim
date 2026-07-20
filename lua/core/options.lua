local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = " "

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.updatetime = 50
opt.timeoutlen = 300
opt.splitbelow = true
opt.splitright = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.hidden = true
opt.completeopt = "menu,menuone,noselect"
opt.fillchars = { eob = " " }
