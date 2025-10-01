return {
	"koenverburg/peepsight.nvim",
	config = function()
		require("peepsight").setup({
			"function_declaration",
			"method_declaration",
			"func_literal",
		})
	end,
}
