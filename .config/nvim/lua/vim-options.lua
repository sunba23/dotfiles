-- based settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set showtabline=0") -- lualine/bufferline has everything
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hls")
vim.g.mapleader = " "

vim.opt.incsearch = true
vim.opt.scrolloff = 9
vim.opt.updatetime = 50
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.o.winborder = "rounded"

-- when pasting over selected text, keep pasted text in yank
vim.keymap.set("x", "<leader>p", '"_dP')

-- visual leader y for yank to system clipboard
-- normal leader Y for yanking whole line to system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

vim.o.cmdheight = 1

-- toggling cmdheight 0 and 1
vim.api.nvim_set_keymap("n", "<leader>ch", ":lua ToggleCmdHeight()<CR>", { noremap = true, silent = true })
function ToggleCmdHeight()
  local current_cmdheight = vim.o.cmdheight
  if current_cmdheight == 0 then
    vim.o.cmdheight = 1
  else
    vim.o.cmdheight = 0
  end
end

-- last line endline confuses in MR diffs
vim.opt.fixeol = false
vim.opt.endofline = false

vim.cmd("set background=dark")

-- hide/show statusline on telescope toggle
local temp_showtabline
local temp_laststatus

function _G.global_telescope_find_pre()
  temp_showtabline = vim.o.showtabline
  temp_laststatus = vim.o.laststatus
  vim.o.showtabline = 0
  vim.o.laststatus = 0
end

function _G.global_telescope_leave_prompt()
  vim.o.laststatus = temp_laststatus
  vim.o.showtabline = temp_showtabline
end

vim.cmd([[
  augroup MyAutocmds
    autocmd!
    autocmd User TelescopeFindPre lua global_telescope_find_pre()
    autocmd FileType TelescopePrompt autocmd BufLeave <buffer> lua global_telescope_leave_prompt()
  augroup END
]])

-- sign column and line numbers
vim.opt.signcolumn = "auto:3"
vim.cmd("set numberwidth=7")
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    if vim.bo.filetype == "neo-tree" or vim.bo.filetype == "DiffviewFiles" then
      vim.wo.signcolumn = "no"
    end
  end,
})

vim.api.nvim_set_keymap("n", "<leader>d", ":DiffviewToggleFiles<CR>", { noremap = true, silent = true })

vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
    source = true,
  },
  signs = true,
  underline = true,
  update_in_insert = false,
})
