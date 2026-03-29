return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      local function normalize_path(path)
        return path:gsub("\\", "/")
      end

      local function normalize_cwd()
        return normalize_path(vim.loop.cwd()) .. "/"
      end

      local function is_subdirectory(cwd, path)
        return string.lower(path:sub(1, #cwd)) == string.lower(cwd)
      end

      local function split_filepath(path)
        local normalized_path = normalize_path(path)
        local normalized_cwd = normalize_cwd()
        local filename = normalized_path:match("[^/]+$")

        if is_subdirectory(normalized_cwd, normalized_path) then
          local stripped_path = normalized_path:sub(#normalized_cwd + 1, -(#filename + 1))
          return stripped_path, filename
        else
          local stripped_path = normalized_path:sub(1, -(#filename + 1))
          return stripped_path, filename
        end
      end

      local function path_display(_, path)
        local stripped_path, filename = split_filepath(path)
        if filename == stripped_path or stripped_path == "" then
          return filename
        end
        return string.format("%s ~ %s", filename, stripped_path)
      end

      telescope.setup({
        defaults = {
          file_ignore_patterns = { ".git/", "*venv*", "*cache*" },
          hidden = true,
          no_ignore = true,
          path_display = path_display,
          border = true,
          winblend = 0,
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              preview_width = 0.7,
              width = { padding = 0 },
              height = { padding = 0 },
            },
          },
          borderchars = {
            prompt = { " ", " ", " ", " ", " ", " ", " ", " " },
            results = { " ", " ", " ", " ", " ", " ", " ", " " },
            preview = { " ", " ", " ", " ", " ", " ", " ", " " },
          },
        },
        pickers = {
          find_files = {
            hidden = true,
            no_ignore = true,
            follow = true,
          },
          live_grep = {
            additional_args = function()
              return { "--follow" }
            end,
          },
        },
        extensions = {
          ["ui-select"] = require("telescope.themes").get_dropdown({}),
        },
      })

      telescope.load_extension("ui-select")

      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
      vim.keymap.set("n", "<leader>fr", builtin.lsp_references, {})
      vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, {})
      vim.keymap.set(
        "n",
        "<leader>fd",
        "<cmd>Telescope diagnostics bufnr=0 theme=dropdown prompt_title=diagnostics previewer=false<CR>"
      )

      local bg = "#1d2031"

      local function bg_only(group)
        vim.api.nvim_set_hl(0, group, { bg = bg, default = false })
      end

      bg_only("NormalFloat")
      bg_only("TelescopeNormal")
      bg_only("TelescopeBorder")

      bg_only("TelescopePromptNormal")
      bg_only("TelescopePromptBorder")

      bg_only("TelescopeResultsNormal")
      bg_only("TelescopeResultsBorder")

      bg_only("TelescopePreviewNormal")
      bg_only("TelescopePreviewBorder")

      bg_only("TelescopePromptTitle")
      bg_only("TelescopeResultsTitle")
      bg_only("TelescopePreviewTitle")
    end,
  },
}
