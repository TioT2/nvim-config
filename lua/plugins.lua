-- plugin setup file

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
    "folke/tokyonight.nvim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    -- autocomplete utils
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",

    -- debugging utils
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
    "jay-babu/mason-nvim-dap.nvim", -- do smth with this trash

    -- Buffer line and developer icons
    "nvim-tree/nvim-web-devicons",
    "akinsho/bufferline.nvim",

    -- nvim-tree
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup({})
        end,
    },

    -- syntax highlighting (treesitter)
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

-- setup "Lazy" package manager
require("lazy").setup(plugins)


-- setup "Mason" package manager
require("mason").setup({})


-- file plugins.lua
