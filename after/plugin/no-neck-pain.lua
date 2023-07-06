require('no-neck-pain').setup({
    width = 120,
    buffers = {
        colors = {
            -- background = "catppuccin-frappe",
        }
    },
    mappings = {
        enabled = true,
        toggle = "<Leader>np",
        widthUp = "<Leader>n=",
        widthDown = "<Leader>n-",
        scratchPad = "<Leader>ns",
    },
    integrations = {
        NvimTree = {
            position = "left",
            reopen = false,
        },
    }
})
