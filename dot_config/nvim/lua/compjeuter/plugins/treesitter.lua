return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    build = ":TSUpdate",
    opts = {
        ensure_installed = require("compjeuter.shared.languages"),
        highlight = {enable = true},
        indent = {enable = true},
    },
}

