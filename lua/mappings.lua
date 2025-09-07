-- Keymap configuration file

-- Set of active keymaps
-- Format: [<combination>] = {<mode>, <aliased>, <name>}

-- Define normal-mode keymaps
local keymaps_normal = {
    -- Window navigation
    ['<C-h>'] = {'<C-w>h', 'Window left'},
    ['<C-j>'] = {'<C-w>j', 'Window down'},
    ['<C-k>'] = {'<C-w>k', 'Window up'},
    ['<C-l>'] = {'<C-w>l', 'Window right'},

    -- Buffer navigation
    ['<C-w>'    ] = {'<cmd> bw <cr> <cmd> bp <cr>', 'Close buffer', { nowait = true }},
    ['<C-Tab>'  ] = {'<cmd> bn <cr>', 'Next buffer'},
    ['<C-S-Tab>'] = {'<cmd> bp <cr>', 'Previous buffer'},

    -- LSP
    ['<C-m>'] = {'<cmd> lua vim.diagnostic.open_float() <cr>', 'Detail LSP warning/error'},

    -- Nvim tree
    ['<C-S-t>'] = {'<cmd> NvimTreeOpen<cr>', 'Open NVIM tree'},

    -- Debugging
    ['<F1>' ] = {'<cmd> lua require("dapui").toggle() <cr>',                        'Toggle debugging UI'},
    ['<F2>' ] = {'<cmd> lua require("dap.ext.vscode").load_launchjs(nil, {}) <cr>', 'Load "launch.json"' },
    ['<F5>' ] = {'<cmd> DapContinue <cr>',                                          'Continue execution' },
    ['<F9>' ] = {'<cmd> DapToggleBreakpoint <cr>',                                  'Toggle breakpoint'  },
    ['<F10>'] = {'<cmd> DapStepOver <cr>',                                          'Step over'          },
    ['<F11>'] = {'<cmd> DapStepInto <cr>',                                          'Step into'          },
}

-- Define input-mode keymaps
local keymaps_input = {
    -- Autocomplete view
    -- ['<C-j>'] = {'<cmd> lua require("cmp").mapping.scroll_docs(4) <cr>', 'Scroll docs down'},
    -- ['<C-k>'] = {'<cmd> lua require("cmp").mapping.scroll_docs(-4) <cr>', 'Scroll docs up'},
}

-- Consolidate keymaps for different modes in the single table
local keymaps = {
    n = keymaps_normal,
    i = keymaps_input,
}

for mode, maps in pairs(keymaps) do
    for map, info in pairs(maps) do
        vim.keymap.set(mode, map, info[1], info[3])
    end
end

-- file mappings.lua

