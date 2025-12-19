-- set comma as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.opt.termguicolors = true

-- line numbers
vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

-- shared keyboard with system
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- ammount of spaces in tabs
vim.o.expandtab = true -- expand tab input with spaces characters
vim.o.smartindent = true -- syntax aware indentations for newline inserts
vim.o.tabstop = 4 -- num of space characters per tab
vim.o.shiftwidth = 4 -- spaces per indentation level

-- case insensite matching unless given at least once capital letter
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.signcolumn = "yes"

-- whitespaces
vim.o.list = true
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "_" }

vim.o.inccommand = "split"
vim.o.cursorline = true
vim.o.scrolloff = 10
