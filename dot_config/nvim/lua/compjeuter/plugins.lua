return {
    require("compjeuter.plugins.core.treesitter"), -- Syntax tree
    require("compjeuter.plugins.core.telescope"), -- Fuzzy (files) finder
    require("compjeuter.plugins.core.mason"), -- Manage editor tooling: LSP, DAP, Linters and formatters
    require("compjeuter.plugins.core.mason-lspconfig"), -- Allows us to ensure lsp's
    require("compjeuter.plugins.core.lspconfig"), -- LSP Configuration utility
    require("compjeuter.plugins.core.blink"), -- Autocomplete, snippets and other doo-dats
    require("compjeuter.plugins.optional.catppuccin"), -- Theme
    require("compjeuter.plugins.optional.neo-tree"), -- Filesystem tree (sidebar)
    require("compjeuter.plugins.optional.render-markdown"), -- Markdown rendering, mainly for nice table alignment.
}

