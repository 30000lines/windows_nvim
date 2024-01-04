-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.autoformat = false
vim.g.root_spec = { "lsp", { ".git", ".svn", "lua" }, "cwd" }

local opt = vim.opt

opt.shiftwidth = 4 -- Size of an indent

vim.g.transparent_background = true
vim.o.clipboard = "unnamedplus"

opt.smartindent = true
opt.autoindent = true
opt.cindent = true
vim.g.neovide_rememger_window_size = true
