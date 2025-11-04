-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap 


-- General Keymaps --

-- use jk to exit insert mode
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })


-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) 
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) 
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) 
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) 

-- alternatives for window navigation
keymap.set("n", "<leader>wh", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<leader>wj", "<C-w>j", { desc = "Move to split below" })
keymap.set("n", "<leader>wk", "<C-w>k", { desc = "Move to split above" })
keymap.set("n", "<leader>wl", "<C-w>l", { desc = "Move to right split" })

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) 
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) 
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 