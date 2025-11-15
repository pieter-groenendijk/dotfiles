return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
            file_ignore_patterns = require("compjeuter.shared.ignored")
        },
    },
    enabled = true,
}

