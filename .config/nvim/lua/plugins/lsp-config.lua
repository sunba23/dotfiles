return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	-- {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	lazy = false,
	-- 	opts = {
	-- 		auto_install = true,
	-- 		automatic_enable = false,
	-- 	},
	-- },
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("lua_ls")

			vim.lsp.config("bashls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("bashls")

			vim.lsp.config("ruff", {
				capabilities = capabilities,
			})
			vim.lsp.enable("ruff")

			vim.lsp.config("pyright", {
				capabilities = capabilities,
			})
			vim.lsp.enable("pyright")

			vim.lsp.config("astgrep", {
				capabilities = capabilities,
			})
			vim.lsp.enable("astgrep")

			vim.lsp.config("gopls", {
				capabilities = capabilities,
			})
			vim.lsp.enable("gopls")

			vim.lsp.config("regal", {
				capabilities = capabilities,
			})
			vim.lsp.enable("regal")

			vim.lsp.config("jsonnet_ls", {
				capabilities = capabilities,
				settings = {
					formatting = {
						Indent = 2,
						MaxBlankLines = 2,
						StringStyle = "single",
						CommentStyle = "slash",
						PrettyFieldNames = true,
						PadArrays = false,
						PadObjects = true,
						SortImports = true,
						UseImplicitPlus = true,
						StripEverything = false,
						StripComments = false,
						StripAllButComments = false,
					},
				},
			})
			vim.lsp.enable("jsonnet_ls")

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<space>fo", vim.lsp.buf.format, {})

			vim.keymap.set("n", "<space>co", "<cmd>lua vim.diagnostic.setqflist({})<CR>")
		end,
	},
}
