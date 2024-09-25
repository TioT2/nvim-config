-- options configuration main file

local o = vim.opt

o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"

o.termguicolors = true -- introduce colors to terminal gui
o.expandtab = true
o.tabstop = 8
o.shiftwidth = 4
o.smarttab = true
o.smartindent = true

o.list = true
local space = "·"
o.listchars = {
    tab = "│─",
    multispace = space,
    lead = space,
    trail = space,
    nbsp = space,
}

-- file options.lua

