-- LSP Configuration file

-- Mason configuration
require("mason").setup({

})

-- Mason LSPConfig configuration
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
    },
})

local lspconfig = require("lspconfig")


lspconfig.clangd.setup {
    on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
        on_attach(client, bufnr)
    end,
    capabilities = capabilities,
} -- lspconfig.clangd.setup


lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"rust"},
    root_dir = lspconfig.util.root_pattern("Cargo.toml"),
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
} -- lspconfig.rust_analyzer.setup

-- file lsp.lua
