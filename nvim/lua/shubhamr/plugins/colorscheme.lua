return {
    -- {
    --     "folke/tokyonight.nvim",
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         -- vim.cmd([[colorscheme tokyonight-day]])
    --         -- vim.cmd([[colorscheme tokyonight-moon]])
    --         vim.cmd([[colorscheme tokyonight]])
    --     end,
    -- },
    {
        "shaunsingh/nord.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            vim.cmd([[colorscheme nord]])
        end,
    },
    -- {
    --     "rebelot/kanagawa.nvim",
    --     priority = 1000, -- make sure to load this before all the other start plugins
    --     config = function()
    --         vim.cmd([[colorscheme kanagawa]])
    --     end,
    -- },
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = true,
    -- },
}
