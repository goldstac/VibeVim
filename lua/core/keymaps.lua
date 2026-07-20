local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>w", "<cmd>write<CR>", opts)
map("n", "<leader>q", "<cmd>quit<CR>", opts)
map("n", "<leader>Q", "<cmd>quit!<CR>", opts)

map("n", "<A-j>", ":m .+1<CR>==", opts)
map("n", "<A-k>", ":m .-2<CR>==", opts)
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
map("t", "<Esc><Esc>", "<C-\\><C-n>", opts)

map("n", "<C-d>", "<C-d>zz", opts)
map("n", "<C-u>", "<C-u>zz", opts)
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)
