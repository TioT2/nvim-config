-- Keymap configuration file


-- Keymaps
local keymaps = {

    -- Buffer navigation
    ['<C-h>'] = {'n', '<C-w>h', 'Window left'},
    ['<C-j>'] = {'n', '<C-w>j', 'Window down'},
    ['<C-k>'] = {'n', '<C-w>k', 'Window up'},
    ['<C-l>'] = {'n', '<C-w>l', 'Window right'},

    -- NVIM Tree
    ['<C-n>'] = {'n', ':NvimTreeOpen<cr>', 'Open NVIM tree'},
}

-- Apply keymaps
for map, info in pairs(keymaps) do
    vim.keymap.set(info[1], map, info[2])
end

-- file mappings.lua

