local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

-- when Telescope is open
-- <C-x> go to file selection as a split
-- <C-v> go to file selection as a vsplit
-- <C-t> go to a file in a new tab

-- extension settings
vim.keymap.set('n', '<leader>o', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>re', builtin.resume, {})

-- recent files remap
-- Map a shortcut to open the picker.
vim.api.nvim_set_keymap("n", "<Leader><Leader>",
    [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
    { noremap = true, silent = true })

    -- Load extensions
    require("telescope").load_extension("recent_files")
    require("telescope").load_extension("lazygit")
    require("telescope").setup {
        extensions = {
            recent_files = {
                only_cwd = true
            },
        },
        defaults = {
            mappings = {
                i = {
                    ["<C-d>"] = actions.delete_buffer,
                },
                n = {
                    ["dd"] = actions.delete_buffer,
                },
            },
            cache_picker = {num_pickers = 10},
            dynamic_preview_title = true,
            path_display = {"smart", shorten = {len = 4}},
            wrap_results = true,
            -- telescope-smart-history
            history = {
                path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
                limit = 100,
            }
        },
    }
