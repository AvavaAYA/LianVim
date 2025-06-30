return {
  { "sbdchd/neoformat" },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "ruff_format" },
        javascript = { "prettierd" },
        markdown = { "prettierd" },
        typescript = { "prettierd" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        rust = { "rustfmt" },
        nix = { "nixfmt" },
        s = { "asmfmt" },
        asm = { "asmfmt" },
      },
      formatters = {
        clang_format = {
          command = require("conform.util").find_executable({
            "/opt/homebrew/bin/clang-format",
          }, "clang-format"),
          prepend_args = { "-style=file:/Users/eastxuelian/.config/clang-format-default" },
        },
      },
    },
  },
  {
    "LhKipp/nvim-nu",
  },
}
