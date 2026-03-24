return {
  "harrisoncramer/gitlab.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "stevearc/dressing.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  build = function()
    require("gitlab.server").build(true)
  end,
  config = function()
    local gitlab = require("gitlab")
    gitlab.setup()

    vim.keymap.set("n", "<leader>glc", gitlab.choose_merge_request, {})
    vim.keymap.set("n", "<leader>glr", gitlab.review, {})
  end,
}
