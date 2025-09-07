-- Decoration (bufferline, etc.)

-- bufferline configuration
local config = {
    options = {
        indicator = {
            style = 'none'
        },
        diagnostics_update_on_event = true,
        diagnostics = "nvim_lsp",
        -- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
    }
}

require("bufferline").setup(config)

