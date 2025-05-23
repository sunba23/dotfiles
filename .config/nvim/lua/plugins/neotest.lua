return {
  { "nvim-neotest/nvim-nio" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-go",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-go")({
            experimental = {
              test_table = true,
            },
            args = { "-count=1", "-timeout=60s" },
          }),
        },
      })

      -- Optional keymaps
      local neotest = require("neotest")
      vim.keymap.set("n", "<leader>tt", function() neotest.run.run() end)
      vim.keymap.set("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end)
      vim.keymap.set("n", "<leader>td", function() neotest.run.run({ strategy = "dap" }) end)
      vim.keymap.set("n", "<leader>ts", neotest.summary.toggle)
      vim.keymap.set("n", "<leader>to", neotest.output_panel.toggle)
    end,
  },
}
