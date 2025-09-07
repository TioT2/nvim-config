-- LSP Configuration file

-- Mason LSPConfig configuration
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd",
    },
})

local lspconfig = require("lspconfig")

-- Setup C/C++ LSP
lspconfig.clangd.setup {
    root_dir = function(name)
        return lspconfig.util.root_pattern("build/compile_commands.json")(name)
    end,
} -- lspconfig.clangd.setup

-- Setup Rust LSP
lspconfig.rust_analyzer.setup {
    filetypes = {"rust"},
    root_dir = function(name)
        return lspconfig.util.root_pattern(
            "Cargo.toml",
            "Makefile"
        )(name)
    end,
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                allFeatures = true,
            }
        }
    }
} -- lspconfig.rust_analyzer.setup

-- file lsp.lua
