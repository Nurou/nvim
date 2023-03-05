local lazygit = require('telescope').load_extension('lazygit')
vim.keymap.set('n', '<leader>lg', vim.cmd.LazyGit)
