return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = require("catppuccin.palettes").get_palette("macchiato")
    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "neo-tree" },
          winbar = { "neo-tree" },
        },
        ignore_focus = { "neo-tree" },
        icons_enabled = true,
        always_show_tabline = false,
      },
      extensions = { "neo-tree" },
      sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
          { "branch", icon = "", color = { fg = colors.fg, bg = colors.bg, gui = "bold" } },
          {
            "diff",
            symbols = { added = " ", modified = " ", removed = " " },
            diff_color = {
              added = { fg = colors.green },
              modified = { fg = colors.orange },
              removed = { fg = colors.red },
            },
            -- cond = conditions.hide_in_width,
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " " },
            diagnostics_color = {
              color_error = { fg = colors.red },
              color_warn = { fg = colors.yellow },
              color_info = { fg = colors.teal },
            },
          },
          {
            function()
              return "%="
            end,
          },
        },
        lualine_x = {
          {
            "location",
            color = { fg = colors.fg_dark },
            -- cond = conditions.buffer_not_empty,
          },
          {
            "encoding",
          },
          {
            "filetype",
          },
        },
        lualine_y = {},
        lualine_z = {
          -- {
          --   "tabs",
          --   mode = 2,
          --   use_mode_colors = true,
          -- },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    })
  end,
}
