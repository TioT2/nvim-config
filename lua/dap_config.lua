-- Debugging-related configuration file
-- no reasons this thing even exist

-- setup DAP configuration
require("mason-nvim-dap").setup({
    ensure_installed = {
        "cpptools",
        "codelldb"
    },
    handlers = {},
})

-- setup DAP user interface
require("dapui").setup({})

local dap = require("dap")

-- dap.adapters.lldb = {
--     type = 'executable',
--     command = 'lldb-dap',
--     name = 'lldb',
-- }

-- dap_config.lua

