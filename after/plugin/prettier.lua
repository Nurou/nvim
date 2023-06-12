local prettier = require("prettier")

prettier.setup({
    ["null-ls"] = {
        condition = function()
            return prettier.config_exists({
                -- if `false`, skips checking `package.json` for `"prettier"` key
                check_package_json = true,
            })
        end,
        runtime_condition = function(params)
            -- return false to skip running prettier
            return true
        end,
        timeout = 5000,
    }
})

-- map <leader>pr to run prettier on the current buffer
vim.api.nvim_set_keymap("n", "<leader>pr", "<cmd>Prettier<CR>", { noremap = true, silent = true })
