-- plugin configuration setup file

-- install and setup Lazy plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
--         "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
--        "--depth=1",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- initialize plugins
local plugins = {
    -- plugins
    "catppuccin/nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- cmp utils
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",

    -- tree
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({})
        end,
    },

    -- syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {"lua", "rust"},
                sync_install = false,
                highlight = { enable = true },
            })
        end,
    },
}

require("lazy").setup(plugins)

-- file plugins.lua
