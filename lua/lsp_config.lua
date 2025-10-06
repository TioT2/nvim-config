-- LSP Configuration file

-- Mason LSPConfig configuration
require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "clangd",
    },
})

vim.lsp.config('clangd', {
    root_dir = function(name)
        return vim.lsp.config.util.root_pattern("build/compile_commands.json")(name)
    end,
})
vim.lsp.enable('clangd')

-- Setup haskell LSP
vim.lsp.enable('hls')

-- Setup Rust LSP
vim.lsp.config('rust-analyzer', {
    filetypes = {"rust"},
    root_dir = function(name)
        return vim.lsp.config.util.root_pattern(
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
})
vim.lsp.enable('rust-analyzer')

-- file lsp.lua
