return {
    "nvim-telescope/telescope.nvim",
    -- opts = function(_, opts)
    --     return {
    --         -- defaults = {
    --         --     layout_strategy = "ivy", -- 设置布局策略为 ivy
    --         --     layout_config = {
    --         --         ivy = {
    --         --             -- 设置 Ivy 主题的高度和宽度
    --         --             height = 0.5, -- 高度设置为屏幕高度的 30%
    --         --         },
    --         --     },
    --         -- },
    -- pickers = {
    --     live_grep = {
    --         theme = "ivy",
    --     },
    --     current_buffer_fuzzy_find = {
    --         theme = "ivy",
    --     },
    -- },
    --     }
    -- end,
    opts = {
        require("telescope").setup({
            pickers = {
                live_grep = {
                    theme = "ivy",
                    layout_config = {
                        height = 64,
                    },
                    path_display = {"tail"}
                },
                current_buffer_fuzzy_find = {
                    theme = "ivy",
                    layout_config = {
                        height = 64,
                    },
                },
                lsp_references = {
                    theme = "ivy",
                    layout_config = {
                        height = 64,
                    },
                    path_display = {"tail"}
                }
            },
        }),
    },
    vim.cmd([[autocmd User TelescopePreviewerLoaded setlocal number]]),
}
