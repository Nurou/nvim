local lsp_zero = require("lsp-zero")

lsp_zero.preset("recommended")

lsp_zero.ensure_installed({
    'tsserver',
    "tailwindcss"
})

-- Fix Undefined global 'vim'
lsp_zero.configure('lua_ls', {
    cmd = { 'lua-language-server' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = { 'vim' },
            },
        },
    },
})

lsp_zero.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
        error = '🔥',
        warn = '⚠️',
        hint = '💡',
        info = 'ℹ️'
    }
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    -- vim.keymap.set("i", "<leader>hlp", function() vim.lsp.buf.signature_help() end, opts)
end)


local null_ls = require('null-ls')

local null_opts = lsp_zero.build_options('null-ls', {
    on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ name = 'null-ls' })")
        end
        if client.server_capabilities.documentRangeFormattingProvider then
            vim.keymap.set("x", "<Leader>f", function()
                vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
            end, { buffer = bufnr, desc = "[lsp] format" })
        end
    end
})

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions

null_ls.setup({
    on_attach = null_opts.on_attach,
    sources = {
        -- formatting
        formatting.prettierd, -- JavaScript / TypeScript
        formatting.stylua,    -- Lua

        -- linting
        lint.eslint_d,      -- JavaScript / TypeScript
        lint.credo,         -- Elixir
        lint.golangci_lint, -- Go

        -- code actions
        action.eslint_d, -- JavaScript / TypeScript
    },
})

lsp_zero.setup()

-- shows inline diagnostic
vim.diagnostic.config({
    virtual_text = true,
    underline = true
})
