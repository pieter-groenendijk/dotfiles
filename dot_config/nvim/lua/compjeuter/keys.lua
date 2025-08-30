local set = vim.keymap.set

-- Moving between windows
set("n", "<leader>h", "<C-w>h", {})
set("n", "<leader>j", "<C-w>j", {})
set("n", "<leader>k", "<C-w>k", {})
set("n", "<leader>l", "<C-w>l", {})

-- Moving windows
set("n", "<leader>H", "<C-w>H", {})
set("n", "<leader>J", "<C-w>J", {})
set("n", "<leader>K", "<C-w>K", {})
set("n", "<leader>L", "<C-w>L", {})

-- Switching between open files
set("n", "<leader>bp", ":bprev<CR>", {})
set("n", "<leader>bn", ":bnext<CR>", {})
set("n", "<leader>bl", ":ls<CR>", {})

set("n", "<leader>b1", ":buffer 100", {})
set("n", "<leader>b2", ":buffer 101", {})
set("n", "<leader>b3", ":buffer 102", {})
set("n", "<leader>b4", ":buffer 103", {})
set("n", "<leader>b5", ":buffer 104", {})
