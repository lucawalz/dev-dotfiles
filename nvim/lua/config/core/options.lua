vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true 
opt.number = true 

-- tabs & indentation
opt.tabstop = 2 
opt.shiftwidth = 2 
opt.expandtab = true 
opt.autoindent = true 

-- line wrapping
opt.wrap = false 

-- search settings
opt.ignorecase = true 
opt.smartcase = true 

-- cursor line
opt.cursorline = true 

-- appearance

-- turn on termguicolors for colorscheme to work
opt.termguicolors = true
opt.background = "dark" 
opt.signcolumn = "yes" 

-- backspace
opt.backspace = "indent,eol,start" 

-- clipboard
opt.clipboard:append("unnamedplus") 

-- Windows/Linux-style copy/paste with Ctrl
-- vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true, desc = "Copy to system clipboard" })
-- vim.keymap.set("n", "<C-v>", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
-- vim.keymap.set("i", "<C-v>", "<C-r>+", { noremap = true, silent = true, desc = "Paste in insert mode" })
-- vim.keymap.set("v", "<C-x>", '"+d', { noremap = true, silent = true, desc = "Cut to system clipboard" })

-- Mac-style copy/paste with Cmd
vim.keymap.set("v", "<D-c>", '"+y', { noremap = true, silent = true, desc = "Copy to system clipboard (Mac)" })
vim.keymap.set("n", "<D-v>", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard (Mac)" })
vim.keymap.set("i", "<D-v>", "<C-r>+", { noremap = true, silent = true, desc = "Paste in insert mode (Mac)" })
vim.keymap.set("v", "<D-x>", '"+d', { noremap = true, silent = true, desc = "Cut to system clipboard (Mac)" })

-- Leader-based clipboard operations (cross-platform)
vim.keymap.set("v", "<leader>y", '"+y', { noremap = true, silent = true, desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>v", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>c", '"+P', { noremap = true, silent = true, desc = "Paste before cursor" })

-- split windows
opt.splitright = true 
opt.splitbelow = true 

-- turn off swapfile
opt.swapfile = false
