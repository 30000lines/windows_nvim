local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

-- map("n", "<C-k>", ":normal! 10k<CR>", { desc = "光标向上移动10行" })
-- map("i", "<C-k>", "<Esc>:normal! 10k<CR>a", { desc = "光标向上移动10行" })
-- map("n", "<C-j>", ":normal! 10j<CR>", { desc = "光标向下移动10行" })
-- map("i", "<C-j>", "<Esc>:normal! 10j<CR>a", { desc = "光标向下移动10行" })
-- map("x", "<C-k>", "10k", { desc = "光标向上移动10行" })
-- map("x", "<C-j>", "10j", { desc = "光标向上移动10行" })
--
-- map("n", "<S-k>", "10<C-y>", { desc = "向上翻页10行" })
-- map("i", "<S-k>", "<Esc>10<C-y><CR>a", { desc = "向下翻页10行" })
-- map("n", "<S-j>", "10<C-e>", { desc = "向下翻页10行" })
-- map("i", "<S-j>", "<Esc>10<C-e><CR>a", { desc = "向下翻页10行" })

map("i", "<C-v>", '<Esc>"+p', { desc = "粘贴" })
map("n", "<C-v>", '"+p', { desc = "粘贴" })
map("v", "<C-c>", '"+y', { desc = "复制" })

map("n", "<C-y>", '"+yiw', { desc = "一种复制方式" })
map("i", "<C-z>", "<C-r>")
map("n", "<Home>", "^")
map("i", "<Home>", "<C-o>^")

local opt = { noremap = true, silent = true }
local function keymaps(a, b, c, d)
    vim.api.nvim_set_keymap(a, b, c, d)
end

function VisualSelectionSearchReplace()
    local search_pattern = vim.fn.input("Enter search pattern (press Enter to confirm): ")
    local replace_with = vim.fn.input("Replace with (press Enter to confirm): ")
    vim.cmd("'<,'>" .. "s/" .. search_pattern .. "/" .. replace_with .. "/g")
end
keymaps("x", "<leader>r", ":lua VisualSelectionSearchReplace()<CR>", opt)

keymaps("n", "<C-Up>", ":normal! 10k<CR>", opt)
keymaps("i", "<C-Up>", "<Esc>:normal! 10k<CR>a", opt)
keymaps("x", "<C-Up>", "10k", opt)

keymaps("n", "<C-Down>", ":normal! 10j<CR>", opt)
keymaps("i", "<C-Down>", "<Esc>:normal! 10j<CR>a", opt)
keymaps("x", "<C-Down>", "10j", opt)

keymaps("n", "<S-Up>", "10<C-y>", opt)
keymaps("i", "<S-Up>", "<Esc>10<C-y><CR>a", opt)
keymaps("n", "<S-Down>", "10<C-e>", opt)
keymaps("i", "<S-Down>", "<Esc>10<C-e><CR>a", opt)
