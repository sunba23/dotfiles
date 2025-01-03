vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.scrolloff = 9
vim.opt.updatetime = 50
vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- when pasting over selected text, keep pasted text in yank
vim.keymap.set("x", "<leader>p", '"_dP')

-- visual leader y for yank to system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
-- normal leader Y for yanking whole line to system clipboard
vim.keymap.set("n", "<leader>Y", '"+Y')

-- quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

-- navigate buffers
vim.keymap.set("n", "<Tab>", function()
	if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then
		vim.cmd("write")
	end
	vim.cmd("bnext")
end, { silent = true })

vim.keymap.set("n", "<S-Tab>", function()
	if vim.bo.modifiable and not vim.bo.readonly and vim.bo.modified then
		vim.cmd("write")
	end
	vim.cmd("bprevious")
end, { silent = true })

vim.o.cmdheight = 0

-- toggling cmdheight 0 and 1
vim.api.nvim_set_keymap('n', '<leader>ch', ':lua ToggleCmdHeight()<CR>', { noremap = true, silent = true })
function ToggleCmdHeight()
  local current_cmdheight = vim.o.cmdheight
  if current_cmdheight == 0 then
    vim.o.cmdheight = 1
  else
    vim.o.cmdheight = 0
  end
end
