return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle<CR>", {})
    require("neo-tree").setup({
      window = {
        width = 35,
        mappings = {
          ["<space>"] = { "toggle_node", nowait = true },
          ["e"] = { "open" },
        },
      },
    })
  end,
}

