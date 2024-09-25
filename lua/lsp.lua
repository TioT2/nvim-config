-- LSP Configuration file

-- Mason configuration
require("mason").setup({})

-- Mason LSPConfig configuration
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
    },
})

local lspconfig = require("lspconfig")

-- file lsp.lua
