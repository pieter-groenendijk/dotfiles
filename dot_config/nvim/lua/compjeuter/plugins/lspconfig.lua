return {
    "neovim/nvim-lspconfig",
    config = function()
        local cfg = require("lspconfig")

        -- keys
        function set(binding, execFunc, options)
            if (options == nil) then
                options = {}
            end

            vim.keymap.set("n", binding, execFunc, options)
        end

        -- Show
        set("K", vim.lsp.buf.hover)
        set("<space>d", vim.diagnostic.open_float, opts)

        -- Go to
        set("gD", vim.lsp.buf.declaration)
        set("gd", vim.lsp.buf.definition)
        set("gi", vim.lsp.buf.implementation)

        -- Do
        set("<space>rn", vim.lsp.buf.rename)
        set("<space>f", function()
            vim.lsp.format {async = true}
        end)

        -- setting up
        cfg.lua_ls.setup({})
    end
}
