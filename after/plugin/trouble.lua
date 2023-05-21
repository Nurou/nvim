require('trouble').setup {
    use_diagnostic_signs = true,
}

vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle quickfix<cr>",
    { silent = true, noremap = true }
)

