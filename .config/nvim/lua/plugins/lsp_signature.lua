return {
	"ray-x/lsp_signature.nvim",
	event = "LspAttach",
	opts = {
		bind = true,
		handler_opts = {
			border = "rounded",
		},
		hint_enable = false,
		max_height = 30,
    toggle_key = "<C-s>",
	},
}
