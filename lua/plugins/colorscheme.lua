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

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        opts = function()
            local logo = [[
  ┌───────────────────────────────────────────────────────────────────────────────────────┐
███████╗ █████╗ ███████╗████████╗██╗  ██╗██╗   ██╗███████╗██╗     ██╗ █████╗ ███╗   ██╗   │
██╔════╝██╔══██╗██╔════╝╚══██╔══╝╚██╗██╔╝██║   ██║██╔════╝██║     ██║██╔══██╗████╗  ██║   │
█████╗  ███████║███████╗   ██║    ╚███╔╝ ██║   ██║█████╗  ██║     ██║███████║██╔██╗ ██║   │
██╔══╝  ██╔══██║╚════██║   ██║    ██╔██╗ ██║   ██║██╔══╝  ██║     ██║██╔══██║██║╚██╗██║   │
███████╗██║  ██║███████║   ██║   ██╔╝ ██╗╚██████╔╝███████╗███████╗██║██║  ██║██║ ╚████║   │
╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   │
  │                                                                                       │
  │                                                                                       │
  │                                                                           Ver 0.1.2   │
  └───────────────────────────────────────────────────────────────────────────────────────┘
      ]]

            logo = string.rep("\n", 8) .. logo .. "\n\n"

            local opts = {
                theme = "doom",
                -- preview = {
                --     command = "orb -m nixos lianvim-banner",
                --     file_path = "/dev/null",
                --     file_height = 28,
                --     file_width = 100,
                -- },
                hide = {
                    -- this is taken care of by lualine
                    -- enabling this messes up the actual laststatus setting after loading a file
                    statusline = false,
                },
                config = {
                    header = vim.split(logo, "\n"),
                    -- stylua: ignore
                    center = {
                        { action = "Telescope find_files", desc = " Find file", icon = " ", key = "f" },
                        { action = "ene | startinsert", desc = " New file", icon = " ", key = "n" },
                        { action = "Telescope oldfiles", desc = " Recent files", icon = " ", key = "r" },
                        { action = "Telescope live_grep", desc = " Find text", icon = " ", key = "g" },
                        { action = [[lua require("lazyvim.util").telescope.config_files()()]], desc = " Config", icon = " ", key = "c" },
                        { action = 'lua require("persistence").load()', desc = " Restore Session", icon = " ", key = "s" },
                        { action = "LazyExtras", desc = " Lazy Extras", icon = " ", key = "x" },
                        { action = "Lazy", desc = " Lazy", icon = "󰒲 ", key = "l" },
                        { action = "qa", desc = " Quit", icon = " ", key = "q" },
                    },
                    footer = function()
                        local stats = require("lazy").stats()
                        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                        return {
                            "⚡ LianVim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
                        }
                    end,
                },
            }

            for _, button in ipairs(opts.config.center) do
                button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
            end

            -- close Lazy and re-open when the dashboard is ready
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    pattern = "DashboardLoaded",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            return opts
        end,
    },
}
