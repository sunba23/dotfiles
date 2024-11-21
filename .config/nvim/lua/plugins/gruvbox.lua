return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = true,
  config = function()
    require("gruvbox").setup({
      overrides = {
        NeoTreeNormal = { bg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE" },
        NeoTreeEndOfBuffer = { bg = "NONE" },
      },
    })
  end,
}
