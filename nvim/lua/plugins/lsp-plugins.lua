return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "jsonls", "pyright", "csharp_ls", "bashls" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.csharp_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.bashls.setup({
        capabilities = capabilities,
      })

      lspconfig["dartls"].setup({
        settings = {
          dart = {
            analysisExcludedFolders = {
              vim.fn.expand("$HOME/.pub-cache"),
              vim.fn.expand("$HOME/.config/flutter/"),
            },
          },
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
