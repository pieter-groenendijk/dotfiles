return {
    require("compjeuter.plugins.catppuccin"), -- Theme
    require("compjeuter.plugins.neo-tree"), -- Filesystem tree (sidebar)
    require("compjeuter.plugins.treesitter"), -- Syntax tree
    require("compjeuter.plugins.telescope"), -- Fuzzy (files) finder
    require("compjeuter.plugins.mason"), -- Manage editor tooling: LSP, DAP, Linters and formatters
    require("compjeuter.plugins.mason-lspconfig"), -- Allows us to ensure lsp's
    require("compjeuter.plugins.lspconfig"), -- LSP Configuration utility
    require("compjeuter.plugins.blink"), -- Autocomplete, snippets and other doo-dats
}

