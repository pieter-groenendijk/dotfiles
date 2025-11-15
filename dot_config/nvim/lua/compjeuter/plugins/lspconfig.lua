return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.cmp",
    },
    enabled = true,
    config = function(_, opts)
        for server, config in pairs(require("compjeuter.shared.lsp")) do

            vim.lsp.enable(server)
        end
    end
}
