require('trouble').setup {
    use_diagnostic_signs = true,
}

vim.keymap.set("n", "<leader>tr", "<cmd>TroubleToggle<cr>",
    { silent = true, noremap = true }
)

