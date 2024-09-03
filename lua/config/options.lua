-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.expandtab = true -- Use spaces instead of tabs
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true -- Insert indents automatically
opt.mouse = "n" -- Enable mouse mode

opt.clipboard = "unnamedplus"
opt.wrap = true
opt.clipboard = ""

opt.spelllang = "en,cjk"
-- vim.opt.spell = true
opt.spelloptions = "camel"
opt.scrolloff = 5
opt.indentexpr = ""
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.foldenable = true
opt.foldlevelstart = 99
