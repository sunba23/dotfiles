return {
	"andythigpen/nvim-coverage",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local coverage = require("coverage")

		coverage.setup({
			auto_reload = true,
			lang = {
				go = {
					coverage_file = "coverage.out",
				},
			},
			signs = {
				covered = { hl = "CoverageCovered", text = "█" },
				uncovered = { hl = "CoverageUncovered", text = "█" },
				partial = { hl = "CoveragePartial", text = "█" },
			},
			highlights = {
				covered = { fg = "#B7F071" },
				uncovered = { fg = "#F07178" },
				partial = { fg = "#AA71F0" },
			},
		})

		vim.keymap.set("n", "<leader>tc", coverage.toggle, { desc = "Toggle coverage highlights" })
		vim.keymap.set("n", "<leader>tC", coverage.load, { desc = "Load coverage data" })
		vim.keymap.set("n", "<leader>tS", coverage.summary, { desc = "Coverage summary" })
	end,
}
