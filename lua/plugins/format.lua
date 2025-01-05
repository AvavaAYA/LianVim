return {
  { "sbdchd/neoformat" },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = function(bufnr)
          if require("conform").get_formatter_info("ruff_format", bufnr).available then
            return { "ruff_format" }
          else
            return { "isort", "black" }
          end
        end,
        javascript = { { "prettierd" } },
        markdown = { { "prettierd" } },
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
        stylua = {
          command = require("conform.util").find_executable({ "/opt/homebrew/bin/stylua" }, "stylua"),
        },
      },
    },
  },
  {
    "LhKipp/nvim-nu",
  },
}
