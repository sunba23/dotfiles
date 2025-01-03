return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "gruvbox-material",
				component_separators = "",
				section_separators = "",
			},
			extensions = { "neo-tree" },
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "" },
				lualine_c = {
          {
            "filename",
            file_status = true,
            path = 1
          }
        },
				lualine_x = {
					"diagnostics",
					-- "diff",
					--"branch",
				},
				lualine_y = { "" },
				lualine_z = { "" },
			},
		})
	end,
}
