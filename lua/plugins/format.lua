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
        c = { "clang-format", "astyle" },
        cpp = { "clangformat", "astyle" },
        rust = { "rustfmt" },
        nix = { "nixfmt" },
      },
    },
  },
  {
    "LhKipp/nvim-nu",
  },
}
