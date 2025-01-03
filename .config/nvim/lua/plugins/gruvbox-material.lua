return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.api.nvim_create_autocmd("ColorScheme", {
      group = vim.api.nvim_create_augroup("custom_highlights_gruvboxmaterial", {}),
      pattern = "gruvbox-material",
      callback = function()
        local config = vim.fn["gruvbox_material#get_configuration"]()
        local palette =
            vim.fn["gruvbox_material#get_palette"](config.background, config.foreground, config.colors_override)
        local set_hl = vim.fn["gruvbox_material#highlight"]
        set_hl("NeoTreeNormal", palette.bg0, palette.none)
        set_hl("NeoTreeNormalNC", palette.bg0, palette.none)
        set_hl("NeoTreeEndOfBuffer", palette.bg0, palette.none)
        set_hl('NeoTreeFileName', palette.fg0, palette.none)

        set_hl('NeoTreeDimText', palette.grey1, palette.none)  -- For "hidden files" text
        set_hl('NeoTreeDotfile', palette.grey1, palette.none)  -- For hidden files
        set_hl('NeoTreeFileStats', palette.grey1, palette.none)
        set_hl('NeoTreeMessage', palette.grey2, palette.none)
      end,
    })
    vim.g.gruvbox_material_enable_italic = true
    vim.cmd.colorscheme("gruvbox-material")
  end,
}
