return {
-- 	"akinsho/bufferline.nvim",
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
--     local harpoon_mark = require("harpoon.mark")
-- 		require("bufferline").setup({
-- 			options = {
-- 				show_buffer_close_icons = false,
-- 				show_close_icon = false,
-- 				diagnostics = "nvim_lsp",
-- 				separator_style = "thin",
-- 				sidebar_filetypes = {
-- 					["neo-tree"] = { text = "File Explorer" },
-- 				},
-- 				offsets = {
-- 					{
-- 						filetype = "neo-tree",
-- 						text = "",
-- 						text_align = "center",
-- 						highlight = "Directory",
-- 					},
-- 				},
-- 				name_formatter = function(buf)
-- 					local harpoon_index = harpoon_mark.get_index_of(buf.path)
-- 					if harpoon_index then
-- 						return string.format("%d: %s", harpoon_index, buf.name) -- Shows index as "1: filename"
-- 					end
-- 					return buf.name
-- 				end,
-- 			},
-- 		})
-- 
-- 		vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { silent = true }) -- Close buffer
-- 	end,
}
