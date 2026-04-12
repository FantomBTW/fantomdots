vim.g.mapleader = " "

 -- go to n
vim.keymap.set("i", "jk", "<Esc>", { desc = "Go to normal mode" })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Go to normal mode" })

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up"})

 -- Explore
vim.keymap.set("n","<leader>e","<CMD>Explore<CR>")

 -- split window
vim.keymap.set("n","<leader>v","<CMD>vsplit | wincmd w | Explore<CR>")
vim.keymap.set("n","<leader>h","<CMD>split | wincmd w | Explore<CR>")

-- jumping
vim.keymap.set("n", "<leader>w", "<CMD>wincmd w<CR>")

 -- write/quit
vim.keymap.set("n","<leader>s","<CMD>write<CR>")
vim.keymap.set("n","<leader>q","<CMD>quit<CR>")
