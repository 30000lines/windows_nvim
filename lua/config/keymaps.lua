-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "<C-Up>", ":normal! 10k<CR>", { desc = "光标向上移动10行" })
map("i", "<C-Up>", "<Esc>:normal! 10k<CR>a", { desc = "光标向上移动10行" })
map("n", "<C-Down>", ":normal! 10j<CR>", { desc = "光标向下移动10行" })
map("i", "<C-Down>", "<Esc>:normal! 10j<CR>a", { desc = "光标向下移动10行" })

map("n", "<S-Up>", "10<C-y>", { desc = "向上翻页10行" })
map("i", "<S-Up>", "<Esc>10<C-y><CR>a", { desc = "向下翻页10行" })
map("n", "<S-Down>", "10<C-e>", { desc = "向下翻页10行" })
map("i", "<S-Down>", "<Esc>10<C-e><CR>a", { desc = "向下翻页10行" })

map("i", "<C-v>", '<Esc>"+p', { desc = "粘贴" })
map("n", "<C-v>", '"+p', { desc = "粘贴" })
map("v", "<C-c>", '"+y', { desc = "复制" })

map("n", "<C-y>", '"+yiw', {desc = "一种复制方式"})
map("i", "<C-z>", '<C-r>')
map("n", "<Home>", '^')
map("i", "<Home>", '<C-o>^')
