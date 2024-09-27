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
    root_dir = lspconfig.util.root_pattern("CMakeLists.txt"),
} -- lspconfig.clangd.setup


lspconfig.rust_analyzer.setup {
    filetypes = {"rust"},
    root_dir = function(name)
        return lspconfig.util.root_pattern(
            "Cargo.toml",
            "Makefile"
        )(name)
    end,
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
} -- lspconfig.rust_analyzer.setup

-- file lsp.lua
