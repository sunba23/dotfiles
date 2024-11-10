return {
  'ThePrimeagen/harpoon',
  config = function ()
    require('harpoon').setup({})
    -- Key mappings for `harpoon` functions
    local ui = require("harpoon.ui")
    local mark = require("harpoon.mark")

    -- Mark the current file
    vim.keymap.set("n", "<leader>m", mark.add_file)

    -- Open the `harpoon` menu
    vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu)

    -- Navigate to marked files
    vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end)
  end
}
