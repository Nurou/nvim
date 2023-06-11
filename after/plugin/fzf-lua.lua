local fzf_lua = require('fzf-lua')
local ignore = { "^node_modules/", "^.git/" }
fzf_lua.setup({
    file_ignore_patterns = ignore,
    winopts = {
        height = 0.90,
        width = 0.65,
        row = 0.30,
        col = 0.50,
        hl = {
            border = 'FloatBorder',
        },
        preview = {
            layout = 'vertical',
        },
    },
    keymap = {
        fzf = {
            -- works but throws an error?
            ["ctrl-q"]     = "select-all+accept",
            ["shift-down"] = "preview-page-down",
            ["shift-up"]   = "preview-page-up",
        },
    },
    files = {
        actions = {
            ["default"] = require("fzf-lua.actions").file_edit,
        }
    },
    lsp = {
        -- make lsp requests synchronous so they work with null-ls
        async_or_timeout = 3000,
    },
})
-- keymaps
vim.api.nvim_set_keymap('n', '<leader>o',
    "<cmd>lua require('fzf-lua').files({ fzf_opts = { ['--keep-right'] = '' } })<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>b',
    "<cmd>lua require('fzf-lua').buffers()<CR>",
    { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader><leader>',
--     "<cmd>lua require('fzf-lua').oldfiles({cwd_only = true, fzf_opts = { ['--keep-right'] = '' } })<CR>",
--     { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fs',
    "<cmd>lua require('fzf-lua').lsp_document_symbols()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>re',
    "<cmd>lua require('fzf-lua').resume()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gf',
    "<cmd>lua require('fzf-lua').git_files()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs',
    "<cmd>lua require('fzf-lua').git_status()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>km',
    "<cmd>lua require('fzf-lua').keymaps()<CR>",
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gw',
    "<cmd>lua require('fzf-lua').grep_cword()<CR>",
    { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>ps',
--     "<cmd>lua require('fzf-lua').live_grep({ cmd = [[rg --hidden --glob '!{.git,yarn.lock, pnpm-lock.yaml, package-lock.json}']] })<CR>",
--     { noremap = true, silent = true })
-- NB: preview and goto line won't worrk with the custom rg cmd for some reason
vim.api.nvim_set_keymap('n', '<leader>ps',
    "<cmd>lua require('fzf-lua').live_grep_native()<CR>",
    { noremap = true, silent = true })
