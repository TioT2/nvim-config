-- configuration root file

-- build basic setup (vim-only options, plugin installation and colorscheme setup)
require("options")
require("plugins")
require("colorscheme")
require("mappings")

-- configure extension sets
require("lsp_config")
require("cmp_config")
require("dap_config")

require("decorations")

-- file init.lua

