return {
    { "sbdchd/neoformat" },
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                javascript = { { "prettierd", "prettier" } },
                markdown = { { "prettierd", "prettier" } },
                c = { "astyle" },
                cpp = { "astyle" },
                rust = { "rustfmt" },
                nix = { "alejandra" },
            },
        },
    },
}
