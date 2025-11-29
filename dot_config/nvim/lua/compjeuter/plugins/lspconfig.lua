return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.cmp",
    },
    enabled = true,
    config = function(_, opts)
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        for server, config in pairs(require("compjeuter.shared.lsp")) do
            config.capabilities = capabilities

            vim.lsp.config(server, config)
            vim.lsp.enable(server)
        end
    end
}
