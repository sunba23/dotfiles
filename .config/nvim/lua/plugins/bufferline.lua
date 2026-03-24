return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
        always_show_bufferline = false,
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "left",
            separator = false, -- Removes the vertical line
            padding = 0, -- Removes the gap between sidebar and tabs
          },
          {
            filetype = "DiffviewFiles",
            text = "Diff View",
            text_align = "left",
            separator = false,
            padding = 0,
          },
        },
      },
    })
  end,
}
