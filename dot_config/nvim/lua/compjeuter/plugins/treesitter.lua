return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    config = function() 
        local config = require("nvim-treesitter.configs")

        config.setup({
            ensure_installed = require("compjeuter.shared.languages"),
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}

