return {
  "crusj/hierarchy-tree-go.nvim",
  config = function()
    require("hierarchy-tree-go").setup({
      icon = {
        fold = "",
        unfold = "󰷏",
        func = "󰊕",
        last = "",
      },
      hl = {
        current_module = "guifg=Green",
        others_module = "guifg=Black",
        cursorline = "guibg=Gray guifg=White",
      },
      keymap = {
        incoming = "<leader>hu",
        outgoing = "<leader>hd",
        open = "<leader>ho",
        close = "<leader>hc",
        focus = "<leader>hf",
        expand = "o",
        jump = "<CR>",
        move = "<leader><leader>",
      },
    })
  end,
}
