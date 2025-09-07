-- options configuration main file

local o = vim.opt

o.number         = true                 -- enable line numbers
o.relativenumber = true                 -- enable relative line numbers
o.clipboard      = "unnamedplus"        -- enable global clipboard
o.termguicolors  = true                 -- enable colorful gui
o.expandtab      = true                 -- expand tabs into spaces
o.tabstop        = 8                    -- tab = 8 spaces
o.shiftwidth     = 4                    -- indent = 4
o.smarttab       = true                 -- smart tab insertion
o.smartindent    = true                 -- smart idenntation

o.list = true
local space = "·"
o.listchars = {
    -- tab = "│─",
    tab = "  ",
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
}

-- setup debug-mode highlight groups
vim.api.nvim_set_hl(0, 'DapBreakpoint', {
    fg = '#FF0000',
    bold = true
})

-- make breakpoint to be red B letter
vim.fn.sign_define('DapBreakpoint', {
    text='',
    texthl='DapBreakpoint',
    -- linehl='DapBreakpoint',
    -- numhl='DapBreakpoint'
})



-- file options.lua

