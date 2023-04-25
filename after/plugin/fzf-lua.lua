local fzf_lua = require('fzf-lua')
local ignore = { "^node_modules/", "^.git/" }
fzf_lua.setup({
    file_ignore_patterns = ignore,
    keymap = {
        fzf = {
            -- works but throws an error?
            ["ctrl-q"]     = "select-all+accept",
            ["shift-down"] = "preview-page-down",
            ["shift-up"]   = "preview-page-up",
        },
    },
})
-- keymaps
vim.api.nvim_set_keymap('n', '<leader>o',
    "<cmd>lua require('fzf-lua').files({ fzf_opts = { ['--keep-right'] = '' } })<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>',
    "<cmd>lua require('fzf-lua').oldfiles({cwd_only = true, fzf_opts = { ['--keep-right'] = '' } })<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fs',
    "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>re',
    "<cmd>lua require('fzf-lua').resume()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs',
    "<cmd>lua require('fzf-lua').git_files()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>km',
    "<cmd>lua require('fzf-lua').keymaps()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gw',
    "<cmd>lua require('fzf-lua').grep_cword()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ps',
    "<cmd>lua require('fzf-lua').live_grep()<CR>",
    { noremap = true, silent = true })
