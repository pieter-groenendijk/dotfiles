local tables = require("compjeuter.lib.tables")

return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
        ensure_installed = tables.keys(require("compjeuter.shared.lsp")),
        automatic_enable = false,
    },
    enabled = true,
}
