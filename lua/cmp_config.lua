-- Autocomplete configurator

local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            vim.snippet.expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
    }),
    -- sorting = {
    --     comparators = {
    --         cmp.config.compare.offset,
    --         cmp.config.compare.exact,
    --         cmp.config.compare.score,
    --         -- cmp.config.compare.recently_used,
    --         -- require("cmp-under-comparator").under,
    --         cmp.config.compare.kind,
    --     },
    -- },
    -- Snippet sources
    sources = cmp.config.sources({
        { name = 'buffer'   },
        { name = 'nvim_lsp' },
    })
})

-- file cmp.lua

