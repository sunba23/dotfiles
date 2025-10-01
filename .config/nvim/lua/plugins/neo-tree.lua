return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree toggle source=filesystem<CR>", { silent = true })
    vim.keymap.set("n", "<C-b>", ":Neotree toggle source=buffers<CR>", { silent = true })

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true,
					show_hidden_count = true,
					hide_dotfiles = false,
					hide_gitignored = true,
				},
			},
			window = {
				width = 40,
				position = "left",
				mappings = {
					["<space>"] = { "toggle_node", nowait = true },
					["e"] = { "open" },
				},
			},
		})
	end,
}
