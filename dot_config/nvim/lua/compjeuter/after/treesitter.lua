local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = {
        "c", "lua", "vim", "javascript", "typescript", "golang", "html", "css", "php", "bash"
    },
    highlight = {enable = true},
    indent = {enable = true},
})
