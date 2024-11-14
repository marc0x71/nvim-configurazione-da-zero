-- Configurazione base

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

vim.opt.colorcolumn = '120'

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

require("config.lazy")
require("config.globals")
require("config.keymaps")


