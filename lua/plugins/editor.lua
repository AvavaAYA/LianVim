return {
  {
    "ggandor/leap.nvim",
    enabled = false,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
      { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },

  { "mg979/vim-visual-multi" },

  {
    "NoahTheDuke/vim-just",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "\\cjustfile", "*.just", ".justfile" },
  },

  { "lambdalisue/suda.vim" },

  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["Enter"] = { "select_and_accept", "fallback" },
        ["<C-r>"] = { "show", "show_documentation", "hide_documentation", "fallback" },
        ["<C-e>"] = { "hide", "fallback" },
      },
    },
  },
}
