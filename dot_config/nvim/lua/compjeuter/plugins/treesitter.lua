return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    build = ":TSUpdate",
    config = function() 
        local cfg = require("nvim-treesitter.configs")

        cfg.setup({
            ensure_installed = require("compjeuter.shared.languages"),
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}

