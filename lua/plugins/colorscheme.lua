return {
    -- {
    --     "srcery-colors/srcery-vim",
    -- },
    --
    -- {
    --     "rebelot/kanagawa.nvim",
    --     opts = {
    --         transparent = true,
    --         compile = true,
    --         terminalColors = true,
    --     },
    -- },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = {
            terminal_colors = true,
            transparent_mode = true,
        },
    },

    -- {
    --     "loctvl842/monokai-pro.nvim",
    --     opts = {
    --         transparent_background = true,
    --     },
    -- },

    {
        "LazyVim/LazyVim",
        opts = {
            -- colorscheme = "monokai-pro",
            colorscheme = "gruvbox",
        },
    },

    {
        "rcarriga/nvim-notify",
        opts = {
            background_colour = "#000000",
        },
    },
}
