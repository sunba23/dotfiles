return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree toggle source=filesystem<CR>", { silent = true })

    require("neo-tree").setup({
      filesystem = {
        follow_current_file = {
          enabled = true,     -- This will find and focus the file in the active buffer every time
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      window = {
        width = 35,
        position = "left",
        mappings = {
          ["<space>"] = { "toggle_node", nowait = true },
          ["e"] = { "open" },
        },
      },
    })
  end,
}
