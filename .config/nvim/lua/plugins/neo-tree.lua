return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Key mapping to toggle Neo-tree
		vim.keymap.set("n", "<C-n>", ":Neotree toggle source=filesystem<CR>", { silent = true })
    vim.keymap.set("n", "<C-b>", ":Neotree toggle source=buffers<CR>", { silent = true })

		-- Set up Neo-tree with specified options
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
				position = "left", -- Ensure Neo-tree is opening on the left
				mappings = {
					["<space>"] = { "toggle_node", nowait = true },
					["e"] = { "open" },
				},
			},
		})
	end,
}
