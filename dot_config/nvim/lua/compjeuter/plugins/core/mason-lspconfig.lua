local tables = require("compjeuter.lib.tables")

return {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = tables.keys(require("compjeuter.shared.lsp")),
            automatic_enable = false,
        })
    end
}
