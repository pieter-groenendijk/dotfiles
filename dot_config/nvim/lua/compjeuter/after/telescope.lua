local telScope = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", telScope.find_files, {})
vim.keymap.set("n", "<leader>fg", telScope.live_grep, {})
