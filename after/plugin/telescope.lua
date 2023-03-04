local builtin = require('telescope.builtin')

-- extension settings
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
-- recent files remap
-- Map a shortcut to open the picker.
vim.api.nvim_set_keymap("n", "<Leader><Leader>",
    [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
    { noremap = true, silent = true })

-- Load extension.
require("telescope").load_extension("recent_files")
require("telescope").setup {
    extensions = {
        recent_files = {
            only_cwd = true
        }
    }
}
