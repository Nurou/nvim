vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "/", 'copilot#Accept("<CR>")', {expr=true, silent=true})
