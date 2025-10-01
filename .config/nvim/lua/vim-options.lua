-- based settings
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set hls")
vim.g.mapleader = " "

vim.opt.incsearch = true
vim.opt.hlsearch = false
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
