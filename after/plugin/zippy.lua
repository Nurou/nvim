  require("zippy").setup({})
  vim.keymap.set("n", "<leader>clg", "<cmd>lua require('zippy').insert_print()<CR>")
