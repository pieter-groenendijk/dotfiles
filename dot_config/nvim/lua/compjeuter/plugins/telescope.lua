return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telScope = require("telescope.builtin")

        vim.keymap.set("n", "<leader>2", telScope.find_files, {})
        vim.keymap.set("n", "<leader>3", telScope.live_grep, {})
    end,
}

