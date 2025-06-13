local telScope = require("telescope.builtin")

vim.keymap.set("n", "<leader>2", telScope.find_files, {})
vim.keymap.set("n", "<leader>3", telScope.live_grep, {})
