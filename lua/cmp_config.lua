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
    -- Snippet sources
    sources = cmp.config.sources({
        { name = 'buffer'   },
        { name = 'nvim_lsp' },
    })
})

-- file cmp.lua

