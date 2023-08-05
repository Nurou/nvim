require('no-neck-pain').setup({
    width = 120,
    buffers = {
        colors = {
            -- background = "catppuccin-frappe",
            -- background = "#1c1917",
            text = "#dc2626",
        },
        scratchPad = {
            enabled = true,
            location = nil
        },
        bo = {
            filetype = 'md'
        },
        right = {
            enabled = false
        }
    },
    mappings = {
        enabled = true,
        toggle = "<Leader>np",
        widthUp = "<Leader>n=",
        widthDown = "<Leader>n-",
        scratchPad = "<Leader>sp",
    },
    integrations = {
        NvimTree = {
            position = "left",
            reopen = false,
        },
    }
})
